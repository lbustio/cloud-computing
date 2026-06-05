# Cómputo nube y tecnologías emergentes

Repositorio de trabajo del curso **Cómputo nube y tecnologías emergentes** para la Maestría en Ciencias en Tecnologías de Seguridad del Instituto Nacional de Astrofísica, Óptica y Electrónica (INAOE).

El repositorio organiza el material por módulos, sesiones prácticas, tareas, documentos administrativos y bibliografía. La ruta del curso avanza desde infraestructura cloud básica en Google Cloud Platform hasta observabilidad, análisis de seguridad, IA/ML en cloud y tecnologías descentralizadas.

## Información General

- Clave: MSO6017
- Programa: Maestría en Ciencias en Tecnologías de Seguridad
- Institución: INAOE
- Profesor: Lázaro Bustio Martínez, PhD
- Email: lbustio@inaoe.mx
- Modalidad: práctica guiada con infraestructura cloud real

## Acceso Rápido

- [Temario general](<00.- Documentos del curso/00.-temario general.md>)
- [Guía del curso en LaTeX](<00.- Documentos del curso/00.- guia_curso/00.-guia_curso.tex>)
- [Documento oficial del curso](<00.- Documentos del curso/01.-burocráticos/MSO6017 Cómputo nube y tecnologías emergentes.docx>)
- [Calendario 2026](<00.- Documentos del curso/01.-burocráticos/Calendario_2026.pdf>)
- [Módulo 1](<01.-Modulo 1 - Introduccion a Google Cloud Platform/00.-temario modulo 1.md>)
- [Módulo 2](<02.-Módulo 2 - Pipelines distribuidos, observabilidad y análisis de eventos en cloud/00.-temario modulo 2.md>)
- [Módulo 3](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/00.-temario modulo 3.md>)
- [Módulo 4](<04.-Módulo 4 - IA y ML aplicados en cloud/00.-temario modulo 4.md>)
- [Módulo 5](<05.-modulo 5/05.-temario modulo 5.md>)
- [Bibliografía](<06.-Bibliografía/>)

## Ruta Del Curso

1. Módulo 1: fundamentos de cloud computing e infraestructura base en GCP.
2. Módulo 2: pipelines de eventos, Elasticsearch, Kibana y observabilidad.
3. Módulo 3: telemetría, monitoreo y análisis de seguridad.
4. Módulo 4: IA/ML aplicados en cloud.
5. Módulo 5: blockchain y tecnologías descentralizadas.

Los módulos están conectados: la infraestructura desplegada en una etapa se reutiliza y amplía en las siguientes.

## Estructura Del Repositorio

```text
.
├── 00.- Documentos del curso/
│   ├── 00.- guia_curso/
│   ├── 00.-temario general.md
│   └── 01.-burocráticos/
├── 01.-Modulo 1 - Introduccion a Google Cloud Platform/
├── 02.-Módulo 2 - Pipelines distribuidos, observabilidad y análisis de eventos en cloud/
├── 03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/
├── 04.-Módulo 4 - IA y ML aplicados en cloud/
├── 05.-modulo 5/
├── 06.-Bibliografía/
├── lbustio_lecture_notes.cls
└── README.md
```

## Material Por Módulo

### Módulo 1. Introducción a Google Cloud Platform

- [Temario del módulo](<01.-Modulo 1 - Introduccion a Google Cloud Platform/00.-temario modulo 1.md>)
- [Sesión 1. Introducción al curso](<01.-Modulo 1 - Introduccion a Google Cloud Platform/01.- Introducción al curso/01.-introduccion al curso.md>)
- [Tarea 1. Comparación entre servicios cloud](<01.-Modulo 1 - Introduccion a Google Cloud Platform/01.- Introducción al curso/01.- Tarea 1 - Comparación entre servicios cloud/01.-tarea1.tex>)
- [Clase 2. Cloud computing con GCP](<01.-Modulo 1 - Introduccion a Google Cloud Platform/02.- Cloud computing con GCP/02.- Cloud computing con GCP.pdf>)
- [Tarea 2. Creación de infraestructura básica](<01.-Modulo 1 - Introduccion a Google Cloud Platform/02.- Cloud computing con GCP/02.- Tarea 2 - Creación de la infraestructura básica/02.- Tarea 2 - Creación de la infraestructura básica.tex>)
- [Clase práctica. Infraestructura Cloud en GCP](<01.-Modulo 1 - Introduccion a Google Cloud Platform/03.- Clase práctica - Infraestructura Cloud en GCP/03.- Clase práctica - Infraestructura Cloud en GCP.tex>)

### Módulo 2. Pipelines, Observabilidad Y Eventos

- [Temario del módulo](<02.-Módulo 2 - Pipelines distribuidos, observabilidad y análisis de eventos en cloud/00.-temario modulo 2.md>)
- [Clase 4. ELK Stack](<02.-Módulo 2 - Pipelines distribuidos, observabilidad y análisis de eventos en cloud/04.- ELK Stack/04.- ELK Stack.pdf>)
- [Clase 5. Instalación de ELK Stack](<02.-Módulo 2 - Pipelines distribuidos, observabilidad y análisis de eventos en cloud/05.- Instalación de ELK Stack/05.- Instalacion de ELK Stack.tex>)

### Módulo 3. Telemetría, Monitoreo Y Seguridad

- [Temario del módulo](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/00.-temario modulo 3.md>)
- [Detección de ataques de fuerza bruta con Kibana](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/06.- Detección de Ataques de Fuerza Bruta con ELK/05.-Detección de Ataques de Fuerza Bruta mediante Análisis Estructurado de Logs en Kibana.tex>)
- [Script de recolección de logs](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/06.- Detección de Ataques de Fuerza Bruta con ELK/collect_varlog_to_elk.py>)
- [Script de preparación de entorno](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/06.- Detección de Ataques de Fuerza Bruta con ELK/setup_env.sh>)
- [Clase práctica. Detección de ataques de fuerza bruta](<03.-Módulo 3 - Telemetría, monitoreo y análisis de seguridad en infraestructura cloud/07.- Clase práctica - Detección de Ataques de Fuerza Bruta con ELK/07.- Clase práctica - Detección de Ataques de Fuerza Bruta.tex>)

### Módulo 4. IA Y ML Aplicados En Cloud

- [Temario del módulo](<04.-Módulo 4 - IA y ML aplicados en cloud/00.-temario modulo 4.md>)
- [Aprendizaje automatizado en GCP](<04.-Módulo 4 - IA y ML aplicados en cloud/08.- Aprendizaje Automatizado en GCP/08.- Aprendizaje Automatizdo en GCP.tex>)

### Módulo 5. Blockchain Y Tecnologías Descentralizadas

- [Temario del módulo](<05.-modulo 5/05.-temario modulo 5.md>)

## Bibliografía

La bibliografía base está reunida en [06.-Bibliografía](<06.-Bibliografía/>). El temario general incluye la lista completa de referencias utilizadas en el curso.

## Qué Se Versiona

Este repositorio incluye:

- temarios y documentos de planeación;
- materiales de clase en Markdown, LaTeX y PDF;
- tareas, guías prácticas y scripts de apoyo;
- bibliografía base seleccionada;
- clase LaTeX común `lbustio_lecture_notes.cls`.

No se versionan:

- videos o grabaciones (`*.mp4`, `*.mov`, `*.mkv`, `*.avi`, `*.webm`);
- configuración local de editor (`.vscode/`, `.idea/`);
- salidas de compilación LaTeX (`build/`, `*.aux`, `*.toc`, `*.synctex.gz`, etc.);
- entornos Python, caches, logs y archivos temporales;
- datos académicos sensibles.

## Requisitos Para Estudiantes

- Cuenta activa en Google Cloud Platform.
- Cliente SSH y conocimientos básicos de Linux.
- Acceso estable a internet.
- Capacidad para documentar evidencias técnicas.
- Disposición para analizar costos, riesgos y decisiones de seguridad.

## Forma De Trabajo

Para cada práctica:

1. Planear la arquitectura y los servicios a utilizar.
2. Ejecutar el despliegue o configuración.
3. Verificar el funcionamiento con evidencia.
4. Analizar riesgos, costos, errores y mejoras.
5. Documentar el proceso y los resultados.

## Buenas Prácticas

- Mantener el orden por módulo y sesión.
- Usar nombres descriptivos para archivos y carpetas.
- No subir credenciales, tokens, llaves privadas ni datos personales.
- Documentar comandos, errores, soluciones y evidencias.
- Evitar subir archivos generados cuando puedan reproducirse.

## Uso De Git

Flujo recomendado:

```bash
git status
git add <archivos>
git commit -m "modulo X: descripcion breve"
git push
```

Ejemplos de mensajes:

- `modulo 1: agrega tarea de infraestructura basica`
- `modulo 2: actualiza material de ELK Stack`
- `modulo 3: agrega scripts de recoleccion de logs`

## Ética Y Seguridad Académica

El curso utiliza análisis de seguridad con fines defensivos y educativos.

- No ejecutar pruebas ofensivas fuera de entornos autorizados.
- No usar datos personales reales sin autorización.
- No compartir credenciales ni llaves privadas.
- Respetar políticas institucionales y legales.
