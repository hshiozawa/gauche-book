(define (score card)
  (case card
    ((A) 11)
    ((J Q K) 10)
    ((2 3 4 5 6 7 8 9 10) card)))

(define (draw-card) 4)

(define (score card)
  (case (draw-card)
    ((A) 11)
    ((J Q K) 10)
    ((2 3 4 5 6 7 8 9 10) => (lambda (x) x))))

(score 4)
(score 'A)
(score 'K)
