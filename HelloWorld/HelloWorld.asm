section	.text
	global _start

_start:
	mov	edx, len
	mov ecx, msg
	inc ebx
	mov	eax, 4
	int 80h

	dec ebx
	mov eax, 1
	int 80h

section	.data
	msg db "Hello, World!", 0xa
	len equ $ - msg
