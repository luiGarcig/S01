10 LET randomNumber = RND(100)  

20 INPUT "Adivinhe o número:"; num
25 LET num = VAL(num)  

30 IF num < randomNumber THEN PRINT "Você errou! Tente um número maior"
35 IF num < randomNumber THEN GOTO 20
40 IF num > randomNumber THEN PRINT "Você errou! Tente um número menor"
45 IF num > randomNumber THEN GOTO 20
50 IF num = randomNumber THEN PRINT "Parabéns! Você acertou o número!"
55 IF num = randomNumber THEN GOTO 100

100 END
