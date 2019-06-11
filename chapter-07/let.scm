((lambda (a b) (+ (* a a) (* b b))) 3 4)

(let ((a 3)
      (b 4))
  (+ (* a a) (* b b)))

(let ((a 3)
      (b 4))
  (let ((a b)
        (b a))
    (cons a b)))

(let* ((a 3)
       (b a))
  (cons a b))

(letrec ((c a)
         (a 1)        
         (b (lambda (x) (+ a x))))
  (b c))

(letrec ((sum (lambda (lis)
                (cond [(null? lis) 0]
                      [(number? (car lis)) (+ (car lis) (sum (cdr lis)))]
                      [else (sum (cdr lis))]))))
  (sum '(1 3 #f 6 #t 9)))

(letrec ((even? (lambda (n)
                  (cond [(= n 0) #t]
                        [(> n 0) (odd? (- n 1))]
                        [else (odd? (+ n 1))])))
         (odd? (lambda (n)
                 (cond [(= n 0) #f]
                       [(> n 0) (even? (- n 1))]
                       [else (even? (+ n 1))]))))
  (even? -8))
         


