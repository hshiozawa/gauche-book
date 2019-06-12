(define (func a b . c) (print "a=" a ", b=" b ", c=" c))

(func 1)

(func 1 2)

(func 1 2 3 4)

(define (func . a) (print "a=" a))
(define func (lambda a (print "a=" a))
  
(func 1 2 3)
