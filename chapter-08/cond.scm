(define (odd lis)
  (cond [(find odd? lis) => (lambda (val) (* val 2))]
        [else 0]))

(define (odd lis)
  (cond [(find odd? lis) => (cut * <> 2)]
        [else 0]))

(odd '(1 2 3))
(find odd? '(2 2 3))
