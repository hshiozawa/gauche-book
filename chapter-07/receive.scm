(min&max 3 1 2)

(receive (min-val max-val)
         (min&max 3 1 2)
         (list min-val max-val))

(receive (min-val . rest)
         (min&max 3 1 2)
         (list min-val rest))

(receive all-values
         (min&max 3 1 2)
         all-values)

(receive (all-values)
         (min&max 3 1 2)
         all-values) ; error

(use srfi-11)

(let-values (((min-val max-val) (min&max 3 1 2)))
  (format #t "max: ~s\nmin: ~s\n" max-val min-val))

(let ((a 3)
      (b 4))
  (let-values (((a b) (min&max 0 100))
               ((x y) (min&max a b)))
    (format #t "x: ~s\ny: ~s\n" x y)))

(let ((a 3)
      (b 4))
  (let*-values (((a b) (min&max 0 100))
                ((x y) (min&max a b)))
    (format #t "x: ~s\ny: ~s\n" x y)))

(values-ref (min&max 0 3 -1) 1)

(values 1 2 3 4)
      


