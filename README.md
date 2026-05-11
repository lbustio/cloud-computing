# Curso: Computo nube y tecnologias emergentes

Repositorio oficial de trabajo para el curso. Aqui vas a encontrar la estructura por modulos, materiales de referencia y la ruta de trabajo para avanzar semana a semana.

## Profesor del curso

- Lazaro Bustio Martinez, PhD
- Email: lbustio@inaoemx

## 1) Proposito del curso

Este curso esta orientado a practica real sobre infraestructura cloud. La idea central no es memorizar definiciones, sino construir, probar, romper, corregir y documentar soluciones tecnicas.

Al finalizar, deberias poder:

- Desplegar infraestructura en Google Cloud Platform (GCP).
- Construir pipelines de observabilidad con Elasticsearch y Kibana.
- Analizar telemetria y eventos de seguridad.
- Aplicar servicios de IA/ML en cloud para analisis de eventos.
- Entender fundamentos de blockchain mediante un despliegue educativo.

## 2) Estructura del repositorio

- 00.-documentos del curso/
  - Temario general y bibliografia.
- 01.-modulo 1/
  - Fundamentos cloud e infraestructura base.
- 02.-modulo 2/
  - Pipelines distribuidos, observabilidad y eventos.
- 03.-modulo 3/
  - Telemetria, monitoreo y analisis de seguridad.
- 04.-modulo 4/
  - IA/ML aplicada a telemetria y seguridad.
- 05.-modulo 5/
  - Blockchain y tecnologias descentralizadas.

## 3) Ruta de aprendizaje sugerida

Sigue este orden para aprovechar la continuidad tecnica del curso:

1. Modulo 1: crea tu infraestructura base en GCP.
2. Modulo 2: reutiliza esa infraestructura para levantar Elasticsearch y Kibana.
3. Modulo 3: usa el pipeline para monitoreo y analisis de seguridad.
4. Modulo 4: aplica IA/ML sobre los eventos recolectados.
5. Modulo 5: despliega blockchain educativa sobre la infraestructura cloud.

Importante: los modulos estan conectados. No conviene saltarse actividades, porque el trabajo de una semana se reutiliza en la siguiente.

## 4) Requisitos minimos para estudiantes

- Cuenta activa en GCP (idealmente con creditos de estudiante o free tier).
- Acceso estable a internet.
- Equipo con cliente SSH.
- Conocimientos basicos de Linux y linea de comandos.
- Disposicion para documentar evidencias tecnicas en cada actividad.

## 5) Forma de trabajo recomendada

Para cada actividad practica:

1. Planea: que vas a desplegar y por que.
2. Ejecuta: implementa en cloud.
3. Verifica: comprueba que funciona con evidencia.
4. Analiza: identifica riesgos, costos y mejoras.
5. Documenta: registra pasos, errores y solucion.

## 6) Entregables esperados por modulo

### Modulo 1

- VM Linux funcional en GCP.
- Acceso SSH operativo.
- Configuracion basica de firewall.
- Servicio web minimo accesible.
- Uso de almacenamiento cloud.
- Diagrama o descripcion de arquitectura desplegada.

### Modulo 2

- Elasticsearch funcional.
- Kibana funcional.
- Dataset/eventos indexados.
- Consultas de busqueda basicas.
- Dashboard inicial de analisis.

### Modulo 3

- Recoleccion de logs (por ejemplo: auth.log, syslog, web logs).
- Centralizacion de eventos.
- Dashboards de monitoreo de seguridad.
- Analisis de actividad sospechosa y hallazgos.

### Modulo 4

- Dataset de telemetria preparado para analisis.
- Uso de BigQuery y/o Vertex AI.
- Analisis automatizado de eventos.
- Interpretacion critica de resultados (incluyendo limites).

### Modulo 5

- Blockchain educativa privada desplegada.
- API funcional para consultas/transacciones.
- Evidencia de bloques, hashes y validacion.
- Analisis critico de ventajas y limitaciones.

## 7) Evaluacion del curso

La evaluacion se centra en evidencia tecnica y no en examenes teoricos tradicionales.

Se considera principalmente:

- Laboratorios funcionales.
- Tareas practicas.
- Reportes tecnicos.
- Dashboards.
- Analisis de eventos.
- Calidad de documentacion y criterio tecnico.

No se contempla un proyecto final tradicional.

## 8) Buenas practicas en este repositorio

- Mantener orden por modulo.
- Nombrar archivos de forma clara.
- Evitar subir datos sensibles (claves, tokens, credenciales).
- Incluir evidencia reproducible (comandos, capturas, logs anonimizados).
- Explicar errores y como los resolviste.

## 9) Uso de Git para estudiantes

Este repositorio ya esta inicializado con Git.

Flujo recomendado:

1. Hacer cambios por actividad.
2. Confirmar con commits pequenos y descriptivos.
3. Escribir mensajes de commit claros.

Ejemplos de mensajes utiles:

- modulo 1: despliegue inicial de VM y firewall
- modulo 2: indexacion de eventos y dashboard base
- modulo 3: correlacion de intentos fallidos SSH

## 10) Etica y seguridad academica

El curso usa analisis de seguridad con enfoque defensivo y educativo.

- No ejecutar pruebas ofensivas fuera del entorno autorizado.
- No usar datos personales reales sin autorizacion.
- No compartir credenciales ni llaves privadas.
- Respetar politicas institucionales y legales.

## 11) Bibliografia base

- Antonopoulos, A. M., y Wood, G. (2019). Mastering Ethereum: Building Smart Contracts and DApps. O'Reilly Media.
- Foster, I., y Gannon, D. B. (2017). Cloud Computing for Science and Engineering. MIT Press.
- Hwang, K. (2017). Cloud Computing for Machine Learning and Cognitive Applications. MIT Press.
- Vacca, J. R. (Ed.). (2016). Cloud Computing Security: Foundations and Challenges. CRC Press.
- Google Cloud. (s. f.). Google Cloud Fundamentals: Core Infrastructure (en espanol). Coursera. https://www.coursera.org/learn/gcp-fundamentals-es
- YouTube. (s. f.). Introduccion a Google Cloud Platform. https://www.youtube.com/watch?v=lvZk_sc8u5I
- YouTube. (s. f.). Google Cloud Platform Tutorial. https://www.youtube.com/watch?v=4dNSAIwXO5M
- YouTube. (s. f.). Google Cloud Platform for Beginners. https://www.youtube.com/watch?v=HU58N5fz7B8