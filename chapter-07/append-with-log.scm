(define (append/log . args)
  (print "args=" args)
  (apply append args))

(append/log '(a b c) '(1 2 3) '(7 8 9))
