org 100h
mov ah, 0Ah
mov dx, string
int 21h

mov bp, string
mov byte[bp+3], string
mov ah, 09h
mov dx, string+2
int 21h

mov ax, 4c00h
int21h

string db
