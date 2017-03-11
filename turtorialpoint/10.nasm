section .text
	global _start

; even 0,2,4  odd 1,3
_start:
	mov ax, 3 ; h means hexadecimal 000000008
	and ax, 1 ; and ax with 1 ;     111111111
	                        ;result: 00000000 and 0 is even
	jz evnn  ; jump if zero JZ to evnn 

	mov eax, 4
	mov ebx, 1
	mov ecx, odd_msg
	mov edx, len2
	int 0x80
	jmp outprog

evnn:
	mov ah, 09h
	mov eax, 4
	mov ebx, 1
	mov ecx, even_msg
	mov edx, len1
	int 0x80

outprog:
	
	mov eax, 1
	int 0x80

section .data
even_msg db 'Even Number !'
len1 equ $- even_msg

odd_msg db 'Odd Number !'
len2 equ $- odd_msg