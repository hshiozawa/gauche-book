(define (run-last-test p n)
  (define (loop lis i)
    (unless (>= i n)
            (test* (format "last-pair ~s" i) p (last-pair lis))
            (loop (cons i lis) (+ i 1))))
  (loop p 0))

(run-last-test '(a) 5)
(run-last-test '(a . b) 5)
