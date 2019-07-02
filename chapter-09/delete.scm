(use srfi-1)

(define *inventory* (list 'potion 'potion 'dagger 'cookie))

(delete 'A '(A B C A))

(define (delete-1 elt lis . options)
  (let-optionals* options ((cmp-fn equal?))
                  (define (loop lis)
                    (cond [(null? lis) '()]
                          [(cmp-fn elt (car lis)) (cdr lis)]
                          [else (cons (car lis) (loop (cdr lis)))]))
                  (loop lis)))

(delete-1 'A '(B C A D A))

(use gauche.test)

;; ref: https://willowlet.hatenadiary.org/entry/20091208/1260245546
(define (delete-1 elt lis . options)
  (let-optionals* options ((cmp-fn equal?))
    (define (loop lis)
      (cond [(null? lis) lis]
            [(cmp-fn elt (car lis)) (cdr lis)]
            [else (let ((memo (loop (cdr lis))))
              (if (eq? (cdr lis) memo) lis (cons (car lis) memo)))]))
  (loop lis)))



(let ((data (list 1 2 3 4 5)))
  (test* "non-copy delete-1" data (delete-1 6 data) eq?))

(let ((data '()))
  (test* "non-copy delete-1" data (delete-1 6 data) eq?))

(let ((data '(1)))
  (test* "non-copy delete-1" data (delete-1 6 data) eq?))

(define (delete-item! item)
  (set! *inventory* (delete-1 item *inventory*)))

(delete-item! 'dagger)

(define (add-item! item)
  (set! *inventory* (cons item *inventory*)))

(add-item! 'dagger)

(define (add-item! item)
  (push! *inventory* item))

(add-item! 'dagger)



                  

