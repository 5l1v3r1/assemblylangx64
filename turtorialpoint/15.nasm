section .text
	global _start

_start:
	mov ecx, len 
	mov esi, s1
	mov edi, s2
	cld ; clear direction flag
	rep movsb ; moving s1 in s2

	mov eax, 4
	mov ebx, 1
	mov ecx, s2 ; printing s2 on screen
	mov edx, 20
	int 0x80

	mov eax, 1
	int 0x80

section .data
s1 db 'Hello World!',0
len equ $-s1

section .bss
s2 resb 20; 20 length of bytes