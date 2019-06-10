(define (sum-of-numbers lis)
  (fold + 0 lis))

(define x sum-of-numbers)

(define sum-of-numbers #f)

(sum-of-numbers '(1 2 3 4))

(x '(1 2 3 4))
