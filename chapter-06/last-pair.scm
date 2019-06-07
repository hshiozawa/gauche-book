;; my 
(define (last-pair lis)
  (if (null? (cdr lis))
      lis
      (last-pair (cdr lis))))

;; answer
(define (last-pair lis)
  (if (pair? (cdr lis))
      (last-pair (cdr lis))
      lis))

(last-pair '(1 2 3))

(last-pair '(3))

(last-pair '(2 3))

(last-pair '(1 2 . 3))




           
