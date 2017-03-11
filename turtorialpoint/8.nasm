section .text
	global _start

_start:
	mov eax, '3' ; moving 3 ascci in eax
	sub eax, '0' ; to convert it to asci

	mov ebx, '4' 
	sub ebx, '0'

	add eax, ebx
	add eax, '0' ; to convert

	mov [sum], eax ; moving eax in sum value
	mov ecx, msg
	mov edx, len
	mov ebx, 1
	mov eax , 4
	int 0x80

	mov ecx, sum
	mov ebx, 1
	mov edx, 1
	mov eax, 4
	int 0x80

	mov eax, 1
	int 0x80

section .data
	msg db 'The Sum is : ',0xA,0xD
	len equ $- msg
segment .bss
	sum resb 1