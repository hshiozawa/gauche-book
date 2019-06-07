(define (copy-list lis)
  (if (pair? lis)
      (cons (car lis) (copy-list (cdr lis)))
      lis))

(copy-list '(1 2 3))

(copy-list '((1 2) (3 4)))

(define (deep-copy-list lis)
  (if (pair? lis)
      (cons #?=(if (pair? (car lis))
                (deep-copy-list (car lis))
                (car lis))
            (deep-copy-list (cdr lis)))
      lis))

(deep-copy-list '(1 2 3 4))

(deep-copy-list '((1 2) (3 4)))
       
