section .text
	global _start

_start:

	mov ecx, [num1] ; moving value of num1 i.e 47 in ecx
	cmp ecx, [num2] ; compare value of num2 i.e 22 with ecx
	jg check_third_num ; jg is jump if greater 47 > 22 so jump to check_third_num
	mov ecx, [num2] ; if not then move 22 in ecx

check_third_num:

	cmp ecx, [num3] ; after jump ecx is 47 , compare with 31
	jg _exit  ; if 47 > 31 then jump to _exit
	mov ecx, [num3] ; otherwise move 31 in ecx

_exit:

	mov [largest], ecx ; now moving 47 in largest value []
	mov ecx, msg  ; msg data to print
	mov edx, len
	mov ebx, 1 ; stdout
	mov eax, 4 ; write
	int 0x80

	mov ecx, largest ; move address of largest in ecx to print
	mov edx, 2 ; len is 2 bytes i.e 47
	mov ebx, 1 
	mov eax, 4
	int 0x80

	mov eax, 1
	int 80h

section .data

	msg db "The Largest digit is :",0xA,0xD
	len equ $- msg
	num1 dd '47'
	num2 dd '22'
	num3 dd '31'

segment .bss
	largest resb 2 ; defining 2 bytes of largest variable