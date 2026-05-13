# Configuración LaTeX - Outputs en carpeta `output/`

## ¿Qué se ha configurado?

Se ha configurado el entorno LaTeX para que **todos los archivos generados durante la compilación** (PDF, logs, auxiliares, etc.) se guarden automáticamente en una carpeta `output/` ubicada al lado de los archivos `.tex`.

### Archivos de configuración creados:

1. **`.latexmkrc`** - Configuración de latexmk
   - Define que todos los outputs vayan a la carpeta `output/`
   - Configura pdflatex como compilador
   - Compatible con BibTeX automáticamente

2. **`compile.bat`** - Script para Windows
   - Compila con: `compile.bat` (compila main.tex)
   - O: `compile.bat archivo.tex` (compila otro archivo)

3. **`compile.sh`** - Script para Linux/macOS
   - Compila con: `./compile.sh` (compila main.tex)
   - O: `./compile.sh archivo.tex` (compila otro archivo)

## Cómo usar

### Opción 1: Scripts proporcionados (RECOMENDADO)

**Windows:**
```bash
compile.bat main.tex
```

**Linux/macOS:**
```bash
./compile.sh main.tex
```

### Opción 2: Directamente con latexmk

```bash
latexmk -r .latexmkrc -pdf main.tex
```

### Opción 3: Compilación manual con pdflatex

```bash
mkdir -p output
pdflatex -interaction=nonstopmode -output-directory=output main.tex
```

## Estructura de carpetas resultante

```
00.-documentos del curso/
├── main.tex
├── lbustio_lecture_notes.cls
├── .latexmkrc
├── compile.bat
├── compile.sh
└── output/
    ├── main.pdf         ← PDF compilado
    ├── main.log         ← Log de compilación
    ├── main.aux         ← Archivo auxiliar
    ├── main.out         ← Tabla de contenidos
    ├── main.fls         ← Lista de archivos
    ├── main.listing     ← Listados de código
    └── main.fdb_latexmk ← Base de datos de latexmk
```

## Ventajas

✓ Directorio principal limpio y organizado  
✓ Fácil de limpiar (solo elimina la carpeta `output/`)  
✓ Compatible con BibTeX/Bibtex8  
✓ Funciona con referencias cruzadas y índices  
✓ Scripts automatizados para compilación  
✓ Compatible con Windows, Linux y macOS  

## Para limpiar archivos compilados

Simplemente elimina la carpeta `output/` y vuelve a compilar:

```bash
rm -rf output/    # Linux/macOS
rmdir /s output   # Windows
```

## Notas

- LaTeX seguirá buscando archivos `.tex` y clases en el directorio principal (es lo correcto)
- Solo los outputs se redirigen a `output/`
- Compatible con cualquier editor LaTeX (VS Code, Overleaf, TeXShop, etc.)
