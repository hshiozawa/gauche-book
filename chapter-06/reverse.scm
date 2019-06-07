(define (reverse lis)
  (if (pair? (cdr lis))
      (append (reverse (cdr lis)) (list (car lis)))
      lis))

(reverse '())
(reverse '(1))
(reverse '(1 2))
(reverse '(1 2 3))

