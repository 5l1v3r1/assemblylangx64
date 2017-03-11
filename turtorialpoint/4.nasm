section .text
	global _start
_start:
	
		mov edx, 9 ;len
		mov ecx, name ; msg
		mov ebx, 1 ; stdout filedescript
		mov eax, 4 ; syscall no for write
		int 0x80

		mov [name], dword 'Nuha' ; stores Nuha in name value 

		mov edx, 8
		mov ecx, name
		mov ebx, 1
		mov eax, 4 
		int 0x80

		mov eax, 1
		int 0x80

section .data
name db 'Zara Ali '