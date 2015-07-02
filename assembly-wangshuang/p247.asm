assume cs:code

code segment
start:	mov ax,cs
	mov ds,ax
	mov si,offset do0	;设置ds:si指向源地址

	mov ax,0
	mov es,ax
	mov di,200h		;设置es:di指向目的地址

	mov cx,offset do0end-offset do0 ; 设置cx为传输长度
	cld
	rep movsb

	mov ax,4c00h
	int 21h

do0:	mov ax,cs
	mov ds,ax
	mov si,202h

	mov ax,0b800h
	mov es,ax
	mov di,12*160+36*2

	mov cx,9

s:	mov al,[si]
	mov es:[di],al
	inc si
	add di,2
	loop s

	mov ax,4c00h
	int 21h

do9end:	nop
code ends
end start



