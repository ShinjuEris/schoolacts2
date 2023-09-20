;PERDON
;Act no 1:PF
.model SMALL
.stack 100h
.data
 namex db 'Shanna A. Perdon', 10, 13 , '$'
.code

 

mov ax, @data
mov ds, ax

mov ax, 0000h
int 10h

mov ah, 02h
mov bh, 0
mov dh, 12
mov dl, 12
int 10h

mov ah, 09h
mov dx, offset namex
int 21h


mov ah, 4ch
mov al, 00h
int 21h