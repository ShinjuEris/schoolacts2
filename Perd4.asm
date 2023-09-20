;Act No 4 Perdon

.model SMALL
.stack 100h
.data   
  
  ctr dw 10
  msg1 db 10,13, '$'  
  
.code     

  mov ax, @data
  mov ds, ax
  
  mov ah, 09h
  mov cx, ctr
  mov al, '*'
  mov bl, 18
  int 10h 
  
  mov dx, offset msg1
  int 21h
  
  mov ah, 0eh
  mov al, 65
  
  int 10h
  add al, 2
  int 10h
  
  inc al
  int 10h
  
  dec al
  int 10h
  
  mov ah, 09h
  mov dx, offset msg1
  int 21h
  
  mov cx, ctr
  mov al, '*'
  int 10h
  
end
  