assume cs:code
code segment
	mov ax,0h
	mov ds,ax	
	mov bx,0200H
	mov cx,64
	mov dx,0
s:	mov [bx],dx
	inc dx
	inc bx
	loop s

	mov ax,4c00h
	int 21h
code ends
end

