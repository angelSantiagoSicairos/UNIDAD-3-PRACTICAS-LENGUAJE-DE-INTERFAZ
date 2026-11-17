; Materia: Lenguajes de Interfaz
; Alumno: Santiago Sicairos Angel Bulmaro
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 01 - Procedimientos
; Descripción: Demuestra la definición, llamada (CALL) y retorno (RET) de un procedimiento en ensamblador x86.

INCLUDE Irvine32.inc

.data
    mensajeInicio        BYTE "Inicio del programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin           BYTE "Fin del programa", 0

.code
main PROC
    mov  edx, OFFSET mensajeInicio        ; Carga la dirección del mensaje inicial
    call WriteString                      ; Imprime la cadena en consola
    call Crlf                             ; Da un salto de línea

    ; Primera llamada al procedimiento
    call mensajeAviso                     ; Llama a mensajeAviso
    mov  eax, 10                          ; Asigna 10 a EAX

    ; Segunda llamada al procedimiento
    call mensajeAviso                     ; Llama nuevamente a mensajeAviso
    mov  eax, 20                          ; Asigna 20 a EAX

    mov  edx, OFFSET mensajeFin           ; Carga la dirección del mensaje final
    call WriteString                      ; Imprime la cadena final
    call Crlf                             ; Da un salto de línea
    exit                                  ; Termina ejecución del programa
main ENDP

; Procedimiento mensajeAviso: imprime un mensaje en consola y retorna
mensajeAviso PROC
    mov  edx, OFFSET mensajeProcedimiento ; Carga la dirección del mensaje interno
    call WriteString                      ; Imprime cadena en consola
    call Crlf                             ; Da un salto de línea
    ret                                   ; Retornar a main
mensajeAviso ENDP

END main