(define (find proc lis)
  (if (pair? lis)
      (if (proc (car lis))
          (car lis)
          (find proc (cdr lis)))
      #f))

;; find with cond
(define (find proc lis)
  (cond [(null? lis) #f]
        [(proc (car lis)) (car lis)]
        [else (find proc (cdr lis))]))

(find odd? '())

(find odd? '(2 4 0 0 4))

(find odd? '(2 4 0 3 5))

(find char-alphabetic? '(#\1 #\3 #\t #\Z #\9))
