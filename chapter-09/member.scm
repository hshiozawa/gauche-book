(define *inventory* (list 'potion 'potion 'dagger 'cookie 'dagger))

(member 'cookie *inventory*)

(member 'ration *inventory*)

(use srfi-1)

(member 'cookie *inventory* eq?)

(define (member key lis pred)
  (cond [(null? lis) #f]
        [(pred key (car lis)) lis]
        [else (member key (cdr lis) pred)]))

(define (member elt lis . options)
  (let-optionals* options ((cmp equal?))
                  (cond [(null? lis) #f]
                        [(cmp elt (car lis)) lis]
                        [else (member elt (cdr lis) cmp)])))

(define (member2 elt lis . options)
  (let-optionals* options ((cmp equal?))
                  (define (loop lis)
                    (cond [(null? lis) #f]
                          [(cmp elt (car lis)) lis]
                          [else (loop (cdr lis))]))
                  (loop lis)))

(define *long-list* (make-list 1000000 #f))

(time (member #t *long-list*))

(time (member2 #t *long-list*))




                  

