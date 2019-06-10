(define (even? a)
  (= 0 (mod a 2)))

(define (filter pred lis)
  (fold (lambda (a b)
          (if (pred a)
              (append b (list a))
              b))
        '() lis))

(filter even? '(1 2 3 4 6))
(even? 2)
(even? 1)

(define (for-each-numbers proc lis)
  (for-each proc (filter number? lis)))

(define (map-numbers proc lis)
  (map proc (filter number? lis)))

(define (numbers-only walk)
  (lambda (proc lis)
    (walk proc (filter number? lis))))

(for-each-numbers print '(1 2 #f 3 4 #t))

(map-numbers (lambda (x) (* x 2)) '(1 2 #f 3 4 #t))

((numbers-only map) (lambda (x) (* x 2)) '(1 2 #f 3 4 #t))

((numbers-only for-each) print '(1 2 #f 3 4 #t))


  
