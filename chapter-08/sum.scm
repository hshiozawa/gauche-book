(define (sum n)
  (if (= n 1)
      1
      (+ n (sum (- n 1)))))

(sum 5)
(sum 9)
(sum 10)

(if 'a 1 2)
