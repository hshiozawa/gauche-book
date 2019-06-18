(define lis '(4 3 2 1))

(find (lambda (num) (< num 3)) lis)

(find (cut < <> 3) lis)

(cut func <> x) ; (lambda (a) (func a x))

(cut func x <>) ; (lambda (a) (func x a))

(cut <> x y) ; (lambda (f) (f x y))

(cut func <> x <>) ; (lambda (a b) (func a x b))

(cut func <> <> x <>) ; (lambda (a b c) (func a b x c))

(cut func <> (x <>)) ; (lambda (a)) (func a (x <>)))

(cut func <> x <...>) ; (lambda (a . b) (apply func a x b))
