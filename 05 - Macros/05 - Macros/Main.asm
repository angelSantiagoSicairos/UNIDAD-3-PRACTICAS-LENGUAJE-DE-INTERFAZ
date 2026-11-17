; Materia: Lenguajes de Interfaz
; Alumno: Santiago Sicairos Angel Bulmaro
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 05 - Macros
; Descripción: Demuestra la definición, inclusión de archivos (.inc) y expansión de macros con parámetros en ensamblador x86.

INCLUDE Irvine32.inc


; Macro MostrarMensaje: imprime en consola una cadena terminada en cero con salto de línea
MostrarMensaje MACRO texto
    mov  edx, OFFSET texto            ; Carga la dirección de memoria de la cadena recibida en EDX
    call WriteString                  ; Imprime cadena en consola
    call Crlf                         ; Imprime salto de línea
ENDM

; Macro Multiplicar: realiza una multiplicación sin signo de 32 bits (res = op1 * op2)
Multiplicar MACRO op1, op2, res
    push eax                          ; Guarda el valor original de EAX en la pila
    push ebx                          ; Guarda el valor original de EBX en la pila
    push edx                          ; Guarda el valor original de EDX en la pila
    mov  eax, op1                     ; Carga el primer operando en EAX
    mov  ebx, op2                     ; Carga el segundo operando en EBX
    mul  ebx                          ; Multiplica sin signo: EDX:EAX = EAX * EBX
    mov  res, eax                     ; Almacena los 32 bits bajos del resultado en res
    pop  edx                          ; Restaura el valor original de EDX
    pop  ebx                          ; Restaura el valor original de EBX
    pop  eax                          ; Restaura el valor original de EAX
ENDM

.data
    mensajebienvenida BYTE "BIENVENIDO AL SISTEMA DE INVENTARIO", 0
    mensajefin        BYTE "HASTA LUEGO, VUELVA PRONTO", 0

.code
main PROC
    MostrarMensaje mensajebienvenida  ; Expande macro para mostrar el mensaje de bienvenida
    MostrarMensaje mensajefin         ; Expande macro para mostrar el mensaje de despedida

    exit                              ; Finalizar ejecución del programa
main ENDP

END main