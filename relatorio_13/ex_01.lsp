(defun calcula-dosagem (peso-kg idade-ano
(defun calcula-dosagem (peso-kg idade-anos)
   (cond ((or (< idade-anos 5) (< peso-kg 20))
         10)
        ((and (<= 5 idade-anos 12) (>= peso-kg 20))
         25)
        (t
         50)))

(defun ajusta-preco (preco-base nome-da-erva)
   (cond ((string-equal nome-da-erva "Ginseng")
         (* preco-base 3.0))
        ((string-equal nome-da-erva "Lotus") 
         (* preco-base 1.5)) 
        (t
         preco-base)))

(princ "Dosagem para 14 anos, 60kg: ")
(princ (calcula-dosagem 60 14))
(terpri)

(princ "Preco final de Lotus (10 moedas base): ")
(princ (ajusta-preco 10 "Lotus"))
(terpri)

(princ "Dosagem (3 anos, 25kg - Caso < 5): ")
(princ (calcula-dosagem 25 3))
(terpri)

(princ "Dosagem (10 anos, 15kg - Caso < 20kg): ")
(princ (calcula-dosagem 15 10))
(terpri)

(princ "Dosagem (8 anos, 20kg - Caso 5-12, >= 20): ")
(princ (calcula-dosagem 20 8))
(terpri)

(princ "Dosagem (14 anos, 60kg - Caso Padrao): ")
(princ (calcula-dosagem 60 14))
(terpri)

(princ "Preco Ginseng (x3.0): ")
(princ (ajusta-preco 10 "Ginseng"))
(terpri)


(princ "Preco Lotus (x1.5): ") 
(princ (ajusta-preco 10 "Lotus"))
(terpri)

(princ "Preco Padrao: ") 
(princ (ajusta-preco 10 "Outra Erva"))
(terpri)

