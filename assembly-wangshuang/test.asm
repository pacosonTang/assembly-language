assume cs:code,ds:data,ss:stack

data segment
	dw 0123H,0234H
data ends

stack segment
	dw 0,0
stack ends 

code segment
start:	mov ax,ds:[0]
	push ds:[0]
	push ds:[2]

	mov ax,4c00h
	int 21h
code ends

end start