;PERDON
;Act no 3:PF
.model SMALL
.stack 100h
.data
 namex db 'Lupang Hinirang',10,13,10,13,'$'
Lyr1 db 'Bayang Magiliw,',10, 13,'$'
lyr2 db 'Perlas ng Silanganan',10, 13,'$'
lyr3 db 'Alab ng puso',10, 13,'$'
lyr4 db 'Sa Dibdib moy buhay.',10, 13,'$'
lyr5 db 'Lupang Hinirang,',10, 13,'$'
lyr6 db 'Duyan ka ng magiting,',10, 13,'$'
lyr7 db 'Sa manlulupig',10, 13,'$'
lyr8 db 'Di ka pasisiil',10, 13,'$'
lyr9 db 'Sa dagat at bundok,',10, 13,'$'
lyr10 db 'Sa simoy at sa langit mong bughaw,',10, 13,'$'
lyr11 db 'May dilag ang tula',10, 13,'$'
lyr12 db 'At awit sa paglayang minamahal.',10, 13,'$'
lyr13 db 'Ang kislap ng watawat mo’y',10, 13,'$'
lyr14 db 'Tagumpay na nagniningning;',10, 13,'$'
lyr15 db 'Ang bituin at araw niya,',10, 13,'$'
lyr16 db 'Kailan pa ma’y di magdidilim',10, 13,'$'
lyr17 db 'Lupa ng araw, ng luwalhati’t pagsinta,',10, 13,'$'
lyr18 db 'Buhay ay langit sa piling mo;',10, 13,'$'
lyr19 db 'Aming ligaya na pag may mang-aapi,',10, 13,'$'
lyr20 db 'Ang mamatay nang dahil sa iyo.',10, 13,'$'

.code

mov ax, @data
mov ds, ax

mov ax, 0000h
int 10h

mov ah, 09h
mov dx, offset namex
int 21h

mov dx, offset Lyr1
int 21h 

mov dx, offset Lyr2
int 21h

mov dx, offset Lyr3
int 21h

mov dx, offset Lyr4
int 21h

mov dx, offset Lyr5
int 21h

mov dx, offset Lyr6
int 21h

mov dx, offset Lyr7
int 21h

mov dx, offset Lyr8
int 21h

mov dx, offset Lyr9
int 21h

mov dx, offset Lyr10
int 21h

mov dx, offset Lyr11
int 21h

mov dx, offset Lyr12
int 21h

mov dx, offset Lyr13
int 21h

mov dx, offset Lyr14
int 21h

mov dx, offset Lyr15
int 21h

mov dx, offset Lyr16
int 21h

mov dx, offset Lyr17
int 21h

mov dx, offset Lyr18
int 21h

mov dx, offset Lyr19
int 21h

mov dx, offset Lyr20
int 21h 

mov ah, 42h
int 10h

mov ah, 4ch
mov al, 00h
int 21h

