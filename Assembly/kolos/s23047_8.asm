org 100h

mov BP, string
mov AH, 09h
mov DX, string
int 21h

mov ah, 00h
int 16h

mov BP, string
mov AH, 09h
mov DX, string
mov byte[bp+3], al
mov DX, string+2
int 21h

mov AX, 4c00h
int 21h

string db "KOCHAM ASEMBLERA", 0Ah, 0Dh, "$"
