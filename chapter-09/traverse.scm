(define (traverse fallback get-key return repeat)
  (lambda (elt lis . options)
    (let-optionals* options ((cmp-fn equal?))
                    (define (loop alis)
                      (cond [(null? alis) fallback]
                            [(cmp-fn elt (get-key alis)) (return alis)]
                            [else (repeat loop alis)]))
                    (loop lis))))

(define member2
  (traverse #f car (lambda (x) x)
            (lambda (loop lis) (loop (cdr lis)))))

(define *long-list* (make-list 1000000 #f))

(member2 #t '(1 2 3 #t))

(define delete-1
  (traverse '() car cdr
            (lambda (loop lis) (cons (car lis) (loop (cdr lis))))))

(delete-1 'A '(B C A D A))

(define assoc
  (traverse #f caar car
            (lambda (loop lis) (loop (cdr lis)))))

(assoc 'foo '((bar . 3) (foo . 2) (baz . 1)))

(assoc 'foo '((bar . 3) (fooo . 2) (baz . 1)))

