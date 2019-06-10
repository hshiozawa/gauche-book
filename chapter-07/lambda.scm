(define square-sum (lambda (a b) (+ (* a a) (* b b))))

(square-sum 1 2)

(define (length lis)
  (fold (lambda (a b) (+ b 1)) 0 lis))

(length '(1 2 3 4))
