;PERDON
;Act no 1:PF
.model SMALL
.stack 100h
.data
.code 


mov ah, 0eh
mov al, 'L'
int 10h        

mov al, 'Y'
int 10h

mov al, 'C'
int 10h

mov al, 'E'
int 10h

mov al, 'U'
int 10h

mov al, 'M'
int 10h   

mov ah, 00h
int 16h

mov ah, 4ch
mov al,00h
int 21h