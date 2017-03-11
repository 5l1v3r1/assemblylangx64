section .text
	global _start

_start:
	mov edx, len
	mov ecx, msg
	mov ebx, 1  ; 1 is file descriptor stdout
	mov eax, 4 ; system call number to write
	int 0x80

	mov edx, 9 ; 9 is length
	mov ecx, s2 
	mov ebx, 1
	mov eax, 4
	int 0x80

	mov eax, 1 ; 1 is signal for exit


section .data

msg db 'Displaying 9 starts',0xa
len equ $ - msg
s2 times 9 db '*' ; s2 says 9 times
