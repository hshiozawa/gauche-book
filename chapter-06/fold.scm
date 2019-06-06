(fold + 0 '(1 2 3 4 5))
;; 同じ意味
;; (+ 5 (+ 4 (+ 3 (+ 2 (+ 1 0)))))

(define (sum-of-numbers lis)
  (fold + 0 lis))

(sum-of-numbers '(1 2 3 4 5))

(define (product-of-numbers lis)
  (fold * 1 lis))

(product-of-numbers '(1 2 3 4 5))

(define (pick-greater a b)
  (if (> a b) a b))

(fold pick-greater -inf.0 '(4 17 -2 0 9))

(define (max-number lis)
  (define (pick-greater a b)
    (if (> a b) a b))
  (fold pick-greater -inf.0 lis))

(max-number '(1 2 3 4 0))

(define (max-number lis)
  (define (pick-greater a b)
    (if (> a b) a b))
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold pick-greater (car lis) (cdr lis))))

(max-number '(1))

(define (length lis)
  (define (increment a b)
    (+ b 1))
  (fold increment 0 lis))

(length '())
(length '(1))
(length '(1 2 3))

(fold cons '() '(a b c d e))
;; (cons e (cons d (cons c (cons b (cons a '())))))

(define (fold proc init lis)
  (if (null? lis)
      init
      (fold proc #?=(proc (car lis) init) #?=(cdr lis))))

;; (fold + 0 '(1 2 3))
;; => (+ 3 (+ 2 (+ 1 0)))
