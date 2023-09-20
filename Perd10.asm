;Act No.10         


.model SMALL
.stack 100h
.data 
     msg db "Enter vowel:$'"
     
.code
     
     
     mov ax, @data
     mov ds, ax
     mov ah, 09h
     lea dx, msg
     int 21h
     
     
la:


     mov ah, 00h ;input
     int 16h
     
     
     cmp al,'a'
     je aadd
     cmp al,'e'
     je aadd
     cmp al,'i'
     je aadd
     cmp al,'o'
     je aadd
     cmp al,'u'
     je aadd
     
     
     cmp al,'A'
     je aadd
     cmp al,'E'
     je aadd
     cmp al,'I'
     je aadd
     cmp al,'O'
     je aadd
     cmp al,'U'
     je aadd
     
     
     
     mov ah,0eh
     int 10h
     mov ah, 00h
     
     
     
return:
     cmp al,27
     je exit 
     jmp la
     
     
aadd:

    mov ah,0eh ;display
    
    add al,5
    int 10h
    
    jmp return
    
    
exit:
     mov ax,4c00h
     int 21h
end                     