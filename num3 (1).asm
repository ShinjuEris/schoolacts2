.model small
.stack 100h

.data
    question1 db ,0Ah,"1. What is the name of the tailed beast that resides on Naruto's body?",0Ah,"$"
    line123:
    line1 db "          a. Son Goku"
    line2 db "                             b. Kurama"
    line3 db "                               c. Shukaku"
    line4 db "                              d. Gyuki",0ah,"$"
    
    question2 db ,0Ah,"                               What is the name of the 2nd Hokage of the Land of Fire?",0Ah,"$"
    line321:
    lines1 db "                         a. Hiruzen Sarutobi"
    lines2 db "                     b. Minato Namizake"
    lines3 db "                      c. Tobirama Senju"
    lines4 db "                       d. Tsunade Senju",0ah,"$"
    
    question3 db ,0Ah,"                       What is Gaara's ordinal number for beingthe Kazekage of the Land of Wind?",0Ah,"$"
    line231:
    1line db "       a. Second"
    2line db "                               b. Third"
    3line db "                                c. Fourth"
    4line db "                               d. Fifth",0ah,"$"
    
    score_message db ,0Ah,"Your final score: $"
    
    answer1 db 0  
    answer2 db 0  
    answer3 db 0  

    score db 0    
    
.code
    
    mov ax, 0000h
    int 10h
    
    mov ax, @data
    mov ds, ax
   

    ; Question 1
    
    mov ah, 9
    lea dx, question1
    int 21h
    
    mov ah, 9
    lea dx, line123
    int 21h 
    
    
    ; Get user input for question 1
    mov ah, 1
    int 21h
    mov answer1, al

    cmp answer1, 'b'  ; Check if the answer is correct (b. Kurama)
    jne wrong_answer1

    ; Increase score by 3 if the answer is correct
    mov al, 3
    add score, al

wrong_answer1:

    ; Question 2
    mov ah, 9
    lea dx, question2
    int 21h
    
    mov ah, 9
    lea dx, line321
    int 21h


    ; Get user input for question 2
    mov ah, 1
    int 21h
    mov answer2, al

    cmp answer2, 'c'  ; Check if the answer is correct (c. Tobirama Senju)
    jne wrong_answer2

    ; Increase score by 3 if the answer is correct
    mov al, 3
    add score, al

wrong_answer2:

    ; Question 3
    mov ah, 9
    lea dx, question3
    int 21h
    
    mov ah, 9
    lea dx, line231
    int 21h

    ; Get user input for question 3
    mov ah, 1
    int 21h
    mov answer3, al

    cmp answer3, 'b'  ; Check if the answer is correct (b. Third)
    jne wrong_answer3

    ; Increase score by 3 if the answer is correct
    mov al, 3
    add score, al

wrong_answer3:

    ; Display final score
    mov ah, 9
    lea dx, score_message
    int 21h

    ; Display score value
    mov ah, 2
    mov dl, score
    add dl, '0'
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

end