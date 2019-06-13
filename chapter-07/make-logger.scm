(define (make-logger func)
  (lambda args
    (print "args=" args)
    (apply func args)))

((make-logger (lambda (x) (+ 1 x))) 1)

(define append/log (make-logger append))

(append/log '(a b c) '(1 2 3) '(7 8 9))

(define cons/log (make-logger cons))

(cons/log 1 2)
