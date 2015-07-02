assume ds:data,cs:code

data segment
	db 'welcome to masm!'
	db 16 dup(5)
data ends

code segment
start:	mov ax,data
	mov ds,ax
	mov si,0
	mov es,ax
	mov di,16
	mov cx,16
	cld
	rep movsb
code ends
end start