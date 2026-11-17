; Materia: Lenguajes de Interfaz
; Alumno: Santiago Sicairos Angel Bulmaro
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 04 - Paso de Parámetros por Pila
; Descripción: Demuestra el paso de parámetros a través de la pila mediante el registro base EBP, 
;              la preservación del registro EBX y la limpieza de argumentos con RET 8.

INCLUDE Irvine32.inc

.data

.code
main PROC
    mov  ebx, 999                     ; Este es el valor inicial de prueba para verificar que EBX se conserva

    push 3                            ; Empujamos el segundo parámetro a la pila ([ebp+12])
    push 25                           ; Empujamos el primer parámetro a la pila ([ebp+8])

    call SumarPila                    ; Llamamos al procedimiento (resultado queda en EAX = 75)

    nop                               ; Punto de inspección en depurador (EAX = 75, EBX = 999)
    exit                              ; Finaliza la ejecución del programa
main ENDP

; Procedimiento SumarPila
; Entrada: [ebp+8] = 25, [ebp+12] = 3
; Salida:  EAX = producto de ambos valores (75), EBX preservado
SumarPila PROC
    push ebp                          ; Guarda el puntero base anterior en la pila
    mov  ebp, esp                     ; Establece el marco de pila actual

    push ebx                          ; Guarda EBX en la pila para preservar su valor original

    mov  eax, [ebp+8]                 ; Leemos el primer parámetro (25) desde la pila
    mov  ebx, [ebp+12]                ; Leemos el segundo parámetro (3) desde la pila

    imul eax, ebx                     ; Multiplicamos con signo: EAX = EAX * EBX (25 * 3 = 75)

    pop  ebx                          ; Restaura el valor original de EBX (999)
    pop  ebp                          ; Restaura el puntero base anterior

    ret  8                            ; Retornar a main y liberar 8 bytes de parámetros en la pila
SumarPila ENDP

END main