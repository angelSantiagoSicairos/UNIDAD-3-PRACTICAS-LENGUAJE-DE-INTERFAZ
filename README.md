# UNIDAD 3 PRACTICAS LENGUAJE DE INTERFAZ# Lenguajes de Interfaz — Unidad 3 (Ensamblador x86)

Repositorio de prácticas y proyecto final correspondientes a la **Unidad 3** de la materia **Lenguajes de Interfaz**, desarrollados en lenguaje ensamblador de 32 bits (MASM) utilizando la biblioteca **Irvine32**.

## Datos Generales
* **Alumno:** Santiago Sicairos Angel Bulmaro
* **Docente:** Dr. José Luis Medina Jiménez
* **Materia:** Lenguajes de Interfaz
* **Horario:** 9:00 - 10:00 AM

---

## Contenido del Repositorio

### Prácticas de la Unidad 3
1. **[Práctica 01 - Procedimientos](./Practica01/Main.asm):** Definición, invocación (`CALL`) y retorno (`RET`) de subrutinas básicas.
2. **[Práctica 02 - Procedimientos Almacenados](./Practica02/Main.asm):** Llamadas anidadas entre procedimientos y flujo de ejecución LIFO.
3. **[Práctica 03 - Validación de Cadena No Vacía](./Practica03/Main.asm):** Evaluación de longitud en `ECX` mediante `TEST` y retorno de estado en `EAX`.
4. **[Práctica 04 - Paso de Parámetros por Pila](./Practica04/Main.asm):** Manejo de marco de pila (`EBP`/`ESP`), preservación de registros y limpieza de argumentos con `RET 8`.
5. **[Práctica 05 - Macros](./Practica05/Main.asm):** Definición y expansión de macros parametrizadas (`MostrarMensaje` y `Multiplicar`).

## Requisitos y Compilación
1. **Entorno:** Microsoft Visual Studio (2019 / 2022) con la carga de trabajo *Desarrollo para el escritorio con C++*.
2. **Arquitectura:** Configurar la plataforma de solución en **x86** (32 bits).
3. **Dependencias:** Tener configurada la librería **Irvine32** (`C:\Irvine`), agregando su ruta en *Directorios de inclusión adicionales* y *Directorios de bibliotecas adicionales*, e incluyendo `Irvine32.lib` en *Dependencias adicionales* del enlazador.
4. **Ensamblador:** Activar la personalización de compilación **masm** en el proyecto y verificar que cada archivo `.asm` tenga el tipo de elemento *Microsoft Macro Assembler*.
5. **Ejecución:** Compilar con `Ctrl + Shift + B` y ejecutar con `Ctrl + F5`.
