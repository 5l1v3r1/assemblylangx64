global _start

section .text 

_start:
	
	xor rax, rax
	add rax, 1
	mov rdi, rax
	lea rsi, [rel hello_world]
	xor rdx, rdx
	add rdx, 14 ; is the length of hello_world
	syscall

	xor rax, rax
	add rax, 60
	xor rdi, rdi  ; basically return 0 and exit
	syscall

	hello_world: db 'Hello World Nigga',0xa


