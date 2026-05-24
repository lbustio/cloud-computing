import os
import re
import socket
import subprocess
from datetime import datetime, timezone

import requests

ELASTIC_URL = "http://34.51.27.216:9200/gcp-vm-logs/_doc"
ELASTIC_USER = "elastic"
ELASTIC_PASSWORD = "changeme"

LOG_ROOT = "/var/log"
MAX_LINES_PER_FILE = 200

EXCLUDED_FILENAMES = {
    "btmp",
    "wtmp",
    "lastlog",
    "faillog",
}

EXCLUDED_EXTENSIONS = (
    ".gz",
    ".xz",
    ".zip",
)

SYSLOG_PATTERN = re.compile(
    r"^(?P<raw_timestamp>\d{4}-\d{2}-\d{2}T\S+)\s+"
    r"(?P<host>\S+)\s+"
    r"(?P<process>[^:]+):\s*"
    r"(?P<message>.*)$"
)

hostname = socket.gethostname()


def is_text_file(path):
    result = subprocess.run(
        ["file", "--mime-type", "-b", path],
        capture_output=True,
        text=True,
        check=False,
    )
    return result.stdout.strip().startswith("text/")


def should_skip(path):
    filename = os.path.basename(path)
    return filename in EXCLUDED_FILENAMES or filename.endswith(EXCLUDED_EXTENSIONS)


def discover_log_files():
    log_files = []

    for root, _, files in os.walk(LOG_ROOT):
        for filename in files:
            path = os.path.join(root, filename)

            if should_skip(path):
                continue

            if is_text_file(path):
                log_files.append(path)

    return sorted(log_files)


def parse_line(line, path):
    clean_line = line.strip()
    now = datetime.now(timezone.utc).isoformat()

    match = SYSLOG_PATTERN.match(clean_line)

    if match:
        data = match.groupdict()
        return {
            "@timestamp": now,
            "raw_timestamp": data["raw_timestamp"],
            "host": data["host"],
            "collector_host": hostname,
            "process": data["process"],
            "message": data["message"],
            "raw_line": clean_line,
            "log_file": path,
        }

    return {
        "@timestamp": now,
        "raw_timestamp": None,
        "host": hostname,
        "collector_host": hostname,
        "process": None,
        "message": clean_line,
        "raw_line": clean_line,
        "log_file": path,
    }


def send_document(document):
    response = requests.post(
        ELASTIC_URL,
        auth=(ELASTIC_USER, ELASTIC_PASSWORD),
        json=document,
        timeout=10,
    )

    if response.status_code not in (200, 201):
        print("ERROR", response.status_code, response.text)
        return False

    return True


def main():
    log_files = discover_log_files()

    print("Archivos detectados:")
    for path in log_files:
        print(path)

    total_sent = 0

    for path in log_files:
        print(f"\nProcesando: {path}")

        try:
            with open(path, "r", encoding="utf-8", errors="replace") as f:
                lines = f.readlines()[-MAX_LINES_PER_FILE:]
        except PermissionError:
            print(f"Sin permisos de lectura: {path}")
            continue

        for line in lines:
            if not line.strip():
                continue

            document = parse_line(line, path)

            if send_document(document):
                total_sent += 1

    print(f"\nDocumentos enviados: {total_sent}")


if __name__ == "__main__":
    main()
