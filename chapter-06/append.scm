(define (append2 a b)
  (if (pair? a)
      (cons (car a) (append2 (cdr a) b)) 
      b))


(append2 '() '(1 2 3))
(append2 '(1 2 3) '())
(append2 '(1 2 3) '(4 5 6))


            
