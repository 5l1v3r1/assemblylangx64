section .text
	global _start
_start:
	mov ecx, 10 ; moving 10 in ecx for loop count
	mov eax, '1' ; moving 1 in eax of ascii

l1:   ; loop 
	mov [num], eax  ; move 1 in value of num []
	mov eax, 4 ; write value of num on screen
	mov ebx, 1 ; file descriptor stdout
	push ecx ; pushing 1 in stack

	mov ecx, num ; move num add in ecx i.e 1
	mov edx, 1  ; 1 length i.e 1
	int 0x80

	mov eax, [num] ; mov 1 in eax
	sub eax, '0' ; subs for converting
	inc eax  ; 2 here and eax is 2 now
	add eax, '0' ; subs for converting
	pop ecx ; removing 1 from stack now and eax is 2 now 
	loop l1 ; repeat same process with eax 2

	mov eax, 1 ; exit
	int 0x80

section .bss
	num resb 1 ; num variable of 1 byte ex: 3,5,6,7,2 single byte
