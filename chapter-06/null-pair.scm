(null? '(1 2 3))
(null? '())
(null? 3)

(pair? '(1 2 3))
(pair? '(1 . 2))
(pair? '())
(pair? 3)

;; my code
(define (list? obj)
  (if (null? obj)
      #t
      (and (pair? obj) (list? (cdr obj)))))

;; answer
(define (list? obj)
  (or (null? obj)
      (and (pair? obj) (list? (cdr obj)))))

(list? '())
(list? '(1 2))
(list? 3)
(list? '(1 . 2))
