(define (append2 a b)
  (append a b))

(append2 '(1 2 3) '(4 5 6))

(define (my-append . args)
  (cond [(null? args) '()]
        [(null? (cdr args)) (car args)]
        [else (append2 (car args) (apply my-append (cdr args)))]))

(my-append)
(my-append '())
(my-append '(1 2 3))
(my-append '(1 2 3) '())
(my-append '(1 2 3) '(4 5 6))
                      
