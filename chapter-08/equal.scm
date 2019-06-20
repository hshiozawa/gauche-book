(equal? (list 1 2 3) (list 1 2 3))
(equal? (list 1 2 (list 3 4) 5) (cons 1 (cons 2 '((3 4) . (5)))))
(equal? (list 1 2 3) (list 1 2 4))
