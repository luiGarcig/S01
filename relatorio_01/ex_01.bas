10 INPUT "Informe a primeira nota: "; np1
15 LET np1 = VAL(np1)
20 INPUT "Informe a segunda nota: "; np2
25 LET np2 = VAL(np2)
30 LET media = (np1 + np2) / 2

40 IF media > 60 THEN GOTO 100
50 IF media < 30 THEN GOTO 200
60 IF media >= 30 AND media <= 60 THEN GOTO 300

100 PRINT "Aprovado direto"
110 GOTO 600

200 PRINT "Reprovado direto"
210 GOTO 600

300 INPUT "Informe a terceira nota"; np3
305 LET np3 = VAL(np3)
310 media = (np1+np2+np3)/3
320 IF media > 50 THEN GOTO 400
330 IF media <= 50 THEN GOTO 500

400 PRINT "Aprovado pela NP3"
410 GOTO 600
500 PRINT "Reprovado pela NP3"
510 GOTO 600

600 END
