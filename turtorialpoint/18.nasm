section .text
	global _start

_start:
	mov eax, 3 ; no of bytes to add
	mov ebx, 0 ; ebx stores the sum
	mov ecx, x  ; ecx points to current element to sum i.e 2 4 3

top:
	add ebx, [ecx] ; adding value of ecx to ebx
	dec eax ; decrement counter ; now eax is 2 from 3
	jnz top  ; jump if counter not 0 to top to loop again

done:
	add ebx,'0' ; add ebx with 0 to convert decimal
	mov [sum], ebx ; store result in sum now

display:
	mov eax, 4
	mov ebx, 1
	mov ecx, sum
	mov edx, 1
	int 0x80

	mov eax, 1
	int 0x80

section .data
	global x
x:
	db 2
	db 4
	db 3

sum:
	db 0