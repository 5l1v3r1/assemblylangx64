global _start

section .text

_start:

	mov rax, 1
	mov rdi, 1
	push 0x0a646c72
	mov rbx, 0x6f57206f6c6c6548
	push rbx

	mov rsi, rsp
	mov rdx, 12
	syscall


	mov rax, 60
	xor rdi, rdi  ; to return 0 at end
	syscall
