section .data
	userMsg db 'Please enter a number: '
	lenUserMsg equ $-userMsg
	dispMsg db 'You Have Entered: '
	lenDispMsg equ $-dispMsg

section .bss
	num resb 5

section .text
	global _start

_start:
	; output the 'Please enter a number: '
	mov eax, 4 ; 4 signal for write
	mov ebx, 1 ; file descript for stdout
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 80h


	; this takes input of 5 bytes and store in num
	mov eax, 3 ; 3 signal for read
	mov ebx, 2  ; file descriptor for stdin to take input
	mov ecx, num ; store the input in num
	mov edx, 5  ; 5 bytes length
	int 80h

	;output the message "The entered number is :"
	mov eax, 4 ; for write
	mov ebx, 1 ; stdout
	mov ecx, dispMsg
	mov edx, lenDispMsg
	int 80h

	; output the number entered
	mov eax, 4 ; for write
	mov ebx, 1 ; for stdout
	mov ecx, num ; moving num what we have input in ecx
	mov edx, 5; 5 bytes in edx

	; exit code
	mov eax, 1 ; 1 signal for exit
	mov ebx, 0  
	int 80h