section .text
	global _start

_start:
	mov al, '3' ; move 3 in al
	sub al, '0' ; to convert

	mov bl, '2' 
	sub bl, '0' 

	mul bl ; this will mul bl with al and stores result in al

	add al, '0' ; convert

	mov [res], al ; move al value to res
	mov ecx, msg
	mov edx, len
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov ecx,res ; transfer res value to ecx for display
	mov edx, 1
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov eax, 1
	int 0x80

section .data
msg db 'The result is : ',0xA,0xD
len equ $- msg
segment .bss
	res resb 1
