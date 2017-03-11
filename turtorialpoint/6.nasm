; use of equ constanst
; %assign %define same

SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1


section.text
	global _start

_start:
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg1
	mov edx, len1
	int 0x80

	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg2
	mov edx, len2
	int 0x80

	mov eax, SYS_EXIT
	int 0x80

section .data
msg1 db 'Hello,Programmers!',0xA,0xD
len1 equ $-msg1
msg2 db 'Linux Assembly Langauge!'
len2 equ $-msg2