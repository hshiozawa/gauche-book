(define *item-database*
  '((potion (drink . #t) (throw . #t))
    (elixir (drink . #t) (throw . #t))
    (pancake (eat . #t) (throw . #t))
    (cookie (eat . #t) (throw . #t))
    (dagger (throw . #t))))

(define (item-properties item)
  (cond [(assoc item *item-database*) => cdr]
        [else '()]))

(item-properties 'potion)

(define (item-property-get item prop)
  (cond [#?=(assoc prop #?=(item-properties item)) => cdr]
        [else #f]))

(item-property-get 'potion 'eat)
(item-property-get 'potion 'drink)

(define (use-item! what item)
  (cond [(not (has-item? item))
         (print "You don't have a " item)]
        [(not (item-property-get item what))
         (print "You don't " what " a " item)]
        [else
         (print what " " item)
         (delete-item! item)])
  #t)

         
         
(define (use-item! 

