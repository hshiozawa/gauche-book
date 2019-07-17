(define (last-pair? lis)
  (if (pair? lis)
      (if (null? (cdr lis))
          lis
          (last-pair? (cdr lis)))
      (error "last-pair needs a pair, but got:" lis)))

(last-pair? 3)
