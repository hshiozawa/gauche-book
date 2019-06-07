(define (length lis)
  (if (null? lis)
      0
      (+ 1 (length (cdr lis)))))

(length '())
(length '(1))
(length '(1 2 3))

(define (filter pred lis)
  (cond [(null? lis) '()]
        [(pred (car lis)) (cons (car lis) (filter pred (cdr lis)))]
        [else (filter pred (cdr lis))]))

(filter odd? '())

(filter odd? '(2 4 0 0 4))

(filter odd? '(2 4 0 3 5))

(filter char-alphabetic? '(#\1 #\3 #\t #\Z #\9))



