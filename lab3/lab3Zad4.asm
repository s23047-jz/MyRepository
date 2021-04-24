org 100h

mov AH, 02h
mov DH, 12
mov DL, 32
int 10h
mov AH, 09h
mov DX, imie
int 21h
mov AH, 02h
mov DH, 00h
mov DL, 00h
int 10h
mov AH, 4ch
int 21h
imie db "Jakub$", 0 
