(use util.match)

(define (make-player . args)
  (define (loop lis)
    (match lis
           [() '()]
           [(attr value . rest) (cons (cons attr value) (loop rest))]))
  (loop args))

(make-player 'hp 320 'mp 66 'position #f 'inventory '(potion potion dagger cookie dagger))

(define (make-player . args)
  (let loop ((lis args))
    (match lis
           [() '()]
           [(attr value . rest) (cons (cons attr value) (loop rest))])))

(define *player*
  (make-player 'hp 320 'mp 66 'position #f 'inventory '(potion potion dagger cookie dagger)))
