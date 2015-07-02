assume cs:code

data segment
	db 'welcome to dazhou , I am tangrong','$'
data ends

code segment
start:	mov ah,2
	mov bh,0
	mov dh,5
	mov dl,12
	int 10h

	mov ah,9
	mov al,'a'
	mov bl,11001010b
	mov bh,0
	mov cx,40
	int 10h

	mov ax,data
	mov ds,ax
	mov dx,0
	mov ah,9
	int 21h

	mov ax,4c00h
	int 21h
code ends
end start