;Act No 7 Perdon
.model SMALL
.stack 100h
.data                            
.code
   mov cx, 26
   mov ah, 0eh
   mov al, 65
   
line1:
 int 10h
 inc al
 loop line1
 
mov ax, 4c00h
int 21h

end   