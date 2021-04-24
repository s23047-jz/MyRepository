org 100h

mov AH, 3Ah
mov DX, tekst
int 21h
mov AH, 4ch
int 21h
tekst db"Jakub47",0
