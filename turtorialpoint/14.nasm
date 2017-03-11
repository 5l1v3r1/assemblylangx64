section .text
	global _start

_start:
	mov eax, '3' ; this is ASCII
	sub eax, '0' ; convert to binary

	mov ebx, '4' 
	sub ebx, '0'
	add eax, ebx
	add eax, '0' ; converted to binary

	mov [sum], eax ; moving 7 in sum value [] var
	mov eax, 4
	mov ebx, 1 ; stdout
	mov ecx, msg
	mov edx, len
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, sum ; moving 7 in ecx , and ecx display ouput message
	mov edx, 1
	int 0x80

	mov eax, 1
	int 0x80

section .data
msg db 'THe sum is : ',0xA,0xD
len equ $- msg

segment .bss
sum resb 1