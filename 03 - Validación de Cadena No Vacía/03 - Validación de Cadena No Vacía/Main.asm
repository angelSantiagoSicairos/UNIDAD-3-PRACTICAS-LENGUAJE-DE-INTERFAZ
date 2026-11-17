; Materia: Lenguajes de Interfaz
; Alumno: Santiago Sicairos Angel Bulmaro
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 03 - Validación de Cadena No Vacía
; Descripción: Verifica mediante la instrucción TEST si la longitud de una cadena recibida en ECX es cero o válida, retornando el resultado en EAX.

INCLUDE Irvine32.inc

.data
    msgentra BYTE "Entrada valida", 0
    msgerror BYTE "Entrada vacia", 0

.code
; Procedimiento ValidarNoVacia
; Entrada: ECX = longitud de la cadena
; Salida:  EAX = 0 si está vacía, 1 si no está vacía
ValidarNoVacia PROC
    xor  eax, eax                     ; Inicializa registro EAX = 0 (asume cadena vacía)
    test ecx, ecx                     ; Evaluamos si ECX es igual a 0 (activa bandera ZF)
    jz   fin                          ; Si ECX = 0, salta a fin y retornar EAX = 0
    mov  eax, 1                       ; Si ECX != 0, asigna EAX = 1 (entrada válida)
fin:
    ret                               ; Retornar el control al procedimiento que llamó
ValidarNoVacia ENDP

main PROC
    mov  ecx, 7                       ; Asigna la longitud de prueba (cambiar a 0 para probar caso vacío)
    call ValidarNoVacia               ; Invocamos validación (resultado queda en EAX)

    test eax, eax                     ; Evaluamos el valor retornado en EAX
    jz   entradaInvalida              ; Si EAX = 0, salta a mensaje de error

    ; Caso entrada válida (EAX = 1)
    mov  edx, OFFSET msgentra         ; Carga la dirección del mensaje de entrada válida
    call WriteString                  ; Imprime cadena en consola
    call Crlf                         ; Da un salto de línea
    jmp  salir                        ; Saltamos al final para evitar ejecutar el bloque de error

entradaInvalida:
    ; Caso entrada vacía (EAX = 0)
    mov  edx, OFFSET msgerror         ; Carga la dirección del mensaje de entrada vacía
    call WriteString                  ; Imprime la cadena en consola
    call Crlf                         ; Da un salto de línea

salir:
    exit                              ; Finaliza la ejecución del programa
main ENDP

END main