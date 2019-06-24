(define (complement pred)
  (lambda (x) (not (pred x))))

(define nonnegative? (complement negative?))
(nonnegative? 2)
(nonnegative? 0)
(nonnegative? -1)

(define (every-pred . preds)
  (define (every-pred-impl preds x)
    (if (null? preds)
        #t
        (if ((car preds) x)
            (every-pred-impl (cdr preds) x)
            #f)))
  (lambda (x) (every-pred-impl preds x)))

(define (every-pred . preds)
  (define (every-pred-impl preds x)
    (cond [(null? preds) #t]
          [((car preds) x) (every-pred-impl (cdr preds) x)]
          [else #f]))
  (lambda (x) (every-pred-impl preds x)))


((every-pred) 0)
((every-pred integer?) 1)
((every-pred integer?) 1.5)
((every-pred integer? positive?) 1)
((every-pred integer? positive?) 1.5)
((every-pred integer? positive?) -1)
((every-pred integer? positive?) -1.5)


(define positive-integer? (every-pred integer? positive?))
(positive-integer? 4)
(positive-integer? -3)
(positive-integer? 2.4)

(define (any-pred . preds)
  (define (any-pred-impl preds x)
    (if (null? preds)
        #f
        (if ((car preds) x)
            #t
            (any-pred-impl (cdr preds) x))))
  (lambda (x) (any-pred-impl preds x)))

(define (any-pred . preds)
  (define (any-pred-impl preds x)
    (cond [(null? preds) #f]
          [((car preds) x) #t]
          [else (any-pred-impl (cdr preds) x)]))
  (lambda (x) (any-pred-impl preds x)))

((any-pred) 0)
((any-pred integer?) 1)
((any-pred integer?) 1.5)
((any-pred integer? positive?) 1)
((any-pred integer? positive?) 1.5)
((any-pred integer? positive?) -1)
((any-pred integer? positive?) -1.5)

(define positive-or-integer? (any-pred integer? positive?))
(positive-or-integer? 4)
(positive-or-integer? 4.1)
(positive-or-integer? -4)
(positive-or-integer? -0.5)

  
