section .text
	global _start

_start:
	mov esi, s1 ; move s1 in esi
	mov edi, s2 ; move s2 in edi
	mov ecx, lens2  ; is equal to 13 , moving 13 in ecx
	cld
	repe cmpsb ; comparing
	jecxz equal ; jump when exc is equal to zero

	; if not equal then

	mov eax, 4
	mov ebx, 1
	mov ecx, msg_neq  ; printing not equals to 
	mov edx, len_neq
	int 80h
	jmp exit

equal:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg_eq
	mov edx, len_eq
	int 80h

exit:
	mov eax, 1
	mov ebx, 0
	int 80h

section .data
s1 db 'HellO World!',0
lens1 equ $-s1

s2 db 'Hello There !',0
lens2 equ $-s2

msg_eq db 'Strings are Equal!',0xa
len_eq equ $-msg_eq

msg_neq db 'String are not Equal !'
len_neq equ $-msg_neq