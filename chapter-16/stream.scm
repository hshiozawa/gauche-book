(use util.stream)

(define fib (stream-cons 0 (stream-cons 1 (stream-map + fib (stream-cdr fib)))))

(stream->list (stream-take fib 10))

(stream-ref fib 10000)

(stream->list (stream-take-while (lambda (x) (< x 1000)) fib))
