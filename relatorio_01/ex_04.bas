10 INPUT "Digite sua altura(m): "; altura
15 LET altura = VAL(altura)
20 INPUT "Digite seu peso(kg): "; peso
25 LET peso = VAL(peso)

30 LET imc = peso / (altura*altura)
40 PRINT "seu imc: " + imc
0 END
