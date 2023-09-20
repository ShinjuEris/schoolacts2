;Act No.9         


.model SMALL
.stack 100h
.data
.code
     ;This is the capital letter
     mov dh, 65
     mov dl, 97
     ;This is a small letter
     mov cx, 52
     jmp line1
     
     
     line1:
          mov al,dh
          mov ah,0eh
          int dh
          loop line2
          
      line2:
           mov al,dl
           mov ah,0eh
           int 10h
           inc dl
           loop line1
           
           
           mov ax, 4c00h
           int 21h
           
end                 
          