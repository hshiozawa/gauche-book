(use util.isomorph)

(define p (cons 1 2))
(define a (list p p))
(define b (list (cons 1 2) (cons 1 2)))

(equal? a b)
(isomorphic? a b)
(isomorphic? a (list p p))

(use srfi-1)
(lset= eqv? '(1 2 3) '(3 1 2))
