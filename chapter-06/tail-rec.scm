(define (length lis)
  (define (length-rec lis n)
    (if (null? lis)
        n
        (length-rec (cdr lis) (+ 1 n))))
  (length-rec lis 0))

(length '())

(length '(1))

(length '(1 2))

(define (reverse lis)
  (define (reverse-rec lis rev)
    (if (null? lis)
        rev
        (reverse-rec (cdr lis) (cons (car lis) rev))))
  (reverse-rec lis '()))

(reverse '())

(reverse '(1))

(reverse '(1 2))

(reverse '(1 2 3))

