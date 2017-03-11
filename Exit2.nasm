global _start 

section .text

_start:

	; exit gracefully 
	
	xor rax, rax
	mov rdi, rax
	add al, 60
	syscall


