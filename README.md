# Lenguajes de Interfaz — Unidad 3 (Ensamblador x86)

Repositorio oficial con las prácticas de la **Unidad 3** de la materia **Lenguajes de Interfaz**, desarrolladas en lenguaje ensamblador de 32 bits (MASM) utilizando la biblioteca **Irvine32**.

## Datos Generales
* **Alumno:** Santiago Sicairos Angel Bulmaro
* **Docente:** Dr. José Luis Medina Jiménez
* **Materia:** Lenguajes de Interfaz
* **Horario:** 9:00 - 10:00 AM

---

## Índice de Prácticas (Enlaces Directos al Código Fuente)

1. **[Práctica 01 - Procedimientos](https://github.com/angelSantiagoSicairos/UNIDAD-3-PRACTICAS-LENGUAJE-DE-INTERFAZ/blob/master/01%20-%20Practica%20Procedimiento/01%20-%20Practica%20Procedimiento/Main.asm)**
   * Definición, invocación (`CALL`) y retorno (`RET`) de un procedimiento personalizado en ensamblador x86 usando Irvine32.

2. **[Práctica 02 - Procedimientos Almacenados](https://github.com/angelSantiagoSicairos/UNIDAD-3-PRACTICAS-LENGUAJE-DE-INTERFAZ/blob/master/02%20-%20Procedimientos%20Almacenados/02%20-%20Procedimientos%20Almacenados/Main.asm)**
   * Llamadas anidadas entre subrutinas (`main -> rutinaA -> rutinaB`) y control del flujo de retorno LIFO.

3. **[Práctica 03 - Validación de Cadena No Vacía](https://github.com/angelSantiagoSicairos/UNIDAD-3-PRACTICAS-LENGUAJE-DE-INTERFAZ/blob/master/03%20-%20Validaci%C3%B3n%20de%20Cadena%20No%20Vac%C3%ADa/03%20-%20Validaci%C3%B3n%20de%20Cadena%20No%20Vac%C3%ADa/Main.asm)**
   * Evaluación de longitud en el registro `ECX` mediante la instrucción `TEST` y retorno del estado de validación en `EAX`.

4. **[Práctica 04 - Paso de Parámetros por Pila](https://github.com/angelSantiagoSicairos/UNIDAD-3-PRACTICAS-LENGUAJE-DE-INTERFAZ/blob/master/04%20-%20Paso%20de%20Par%C3%A1metros%20por%20Pila/04%20-%20Paso%20de%20Par%C3%A1metros%20por%20Pila/Main.asm)**
   * Paso de argumentos a través de la pila mediante marco base (`EBP`/`ESP`), preservación de registros y limpieza con `RET 8`.

5. **[Práctica 05 - Macros](https://github.com/angelSantiagoSicairos/UNIDAD-3-PRACTICAS-LENGUAJE-DE-INTERFAZ/blob/master/05%20-%20Macros/05%20-%20Macros/Main.asm)**
   * Definición, inclusión y expansión de macros parametrizadas (`MostrarMensaje` y `Multiplicar`).

---

## Requisitos y Compilación
* **Entorno:** Microsoft Visual Studio (2019 / 2022) con la carga de trabajo *Desarrollo para el escritorio con C++*.
* **Arquitectura:** Plataforma de solución configurada estrictamente en **x86** (32 bits).
* **Dependencias:** Librería **Irvine32** configurada en las propiedades del proyecto (`Irvine32.lib` y directorios de inclusión/bibliotecas).
* **Ensamblador:** Personalización de compilación **masm** habilitada en el proyecto y archivos `.asm` configurados como *Microsoft Macro Assembler*.
* **Ejecución:** Compilar con `Ctrl + Shift + B` y ejecutar con `Ctrl + F5`.
