;Act No.8

 
.model SMALL
.stack 100h
.data 

      ctr dw 10
      msg1 db "Elective 1$"
      msg2 db "Subject : $"
      msg3 db "IT $"
.code
      
     mov ax,@data
     mov ds,ax
     jmp line2
                     
                 
     line1:            
     mov ah, 09h
     mov dx, offset msg1 
     int 21h 
     jmp exitp  
     
     
     line2:
     mov ah, 09h
     mov dx, offset msg2  
     int 21h
     jmp line3  
     
     
     line3:
     mov ah, 09h  
     mov dx, offset msg3
     int 21h  
     jmp line1
     
     
     
exitp:
      mov ax, 4c00h  
      int 21h