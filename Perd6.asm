;Act No 6 Perdon
.model SMALL
.stack 100h
.data
   msg1 db "Enter string;$"
        
.code
  mov ax, @data
  mov ds, ax
  mov ah, 09h
  lea dx, msg1
  int 21h
  
 inputx:
 mov ah, 00h
 int 16h
 mov ah, 0ch
 int 10h
 
 cmp al, '.' 
 jmp inputx
 
mov ax, 4c00h
int 21h  