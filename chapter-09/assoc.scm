(assoc 'foo '((bar . 3) (foo . 2) (baz . 1)))

(assoc 'foo '((bar . 3) (fooo . 2) (baz . 1)))

(define (assoc key alist . options)
  (let-optionals* options ((cmp-fn equal?))
                  (define (loop alis)
                    (cond [(null? alis) #f]
                          [(cmp-fn key (caar alis)) (car alis)]
                          [else (loop (cdr alis))]))
                  (loop alist)))




                
