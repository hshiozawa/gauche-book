(define *num-tests* 0)
(define *num-passes* 0)
(define *num-failures* 0)



(define (mytest-start name)
  (print "Testing " name " ...")
  (set! *num-tests* 0)
  (set! *num-passes* 0)
  (set! *num-failures* 0))

(define (mytest-end)
  (print *num-tests* " tests, "
         *num-passes* " passed, "
         *num-failures* " failed."))

(define (mytest label expected thunk . options)
  (let-optionals* options ((cmp-fn equal?))
                  (print "Testing " label " ...")
                  (inc! *num-tests*)
                  (let ((result (guard (e (else 'test-error))
                                       (thunk))))
                    (cond [(cmp-fn expected result)
                           (inc! *num-passes*)
                           (print " : OK")]
                          [else
                           (inc! *num-failures*)
                           (print " : ERROR expecting " expected ", but got " result)]))
                  ))

(mytest-start "TEST")

(mytest "Test 1" 1 (lambda () (+ 1 1)) eq?)
(mytest "Test 1" '(1 2) (lambda () '(1 2 3)))
 
(mytest-end)


         
 
  
