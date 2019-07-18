(define add (lambda (x y) (+ x y)))

(
 (
  (lambda (y)
    (lambda (x)
      (begin
        (set! y (+ y x))
        y)
      )
    )
  10)
 1)
