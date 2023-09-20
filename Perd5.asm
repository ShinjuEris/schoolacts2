;Act No 5 Perdon
.model SMALL
.data        
.code
   mov ah, 0eh
   jmp line3
  Line1:
      mov al, 65
      int 10h
      jmp exitp
      
  Line2:
      mov al, 66
      int 10h
      jmp line1
  
  Line3:
      mov al, 67
      int 10h
      jmp line2
      
  exitp:
      mov ax, 4c00h
      int 21h
      
end      
 