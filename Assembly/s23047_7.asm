rg 100h


mov ah, 00h
int 16h


mov ah, 02h
mov dl, al
int 21h


mov ah, 61h
cmp al, ah

JL uppercase1
JGE lowercase1

uppercase1:
mov ah, 41h
cmp al, ah
JLE uppercase2
JG else

uppercase2:
mov ah, 5Ah
cmp al, ah
JLE uppercase3
JG else

uppercase3:
mov ah, 02h
mov dl, al
add dl, 0x05
int 21h
jmp end

lowercase1:
mov ah, 7Ah
cmp al, ah
JLE lowercase2
JG else

lowercase2:
mov ah, 02h
mov dl, al
sub dl, 0x05
int 21h
jmp end

else:
mov ah, 02h
mov dl, al
int 21h
jmp end

end:
mov ax, 4Ch
int 21h
