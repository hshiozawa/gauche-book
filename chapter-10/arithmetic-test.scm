(use gauche.test)

(test-start "mycode.scm")

(define (nearly-equal? a b)
  (< (abs (- a b)) 1.0e-11))
  
(test* "FP arithmetic test" 2.0 (+ 1.0 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1))

(test* "FP arithmetic test (nearly-equal)" 2.0 (+ 1.0 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1) nearly-equal?)

(test-end)
