(define (make-list num . args)
  (define (maker n init)
    (if (= n 0)
        '()
        (cons init (maker (- n 1) init))))
  (maker num (if (null? args) #f (car args))))

(make-list 10)

(make-list 10 'a)

(define (make-list num . args)
  (let-optionals* args ((init #f))
                  (define (maker n)
                    (if (= n 0) '() (cons init (maker (- n 1)))))
                  (maker num)))
                    
