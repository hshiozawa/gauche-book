(define (tree-walk walker proc tree)
  (walker (lambda (elt)
            (if (list? elt)
                (tree-walk walker proc elt)
                (proc elt)))
          tree))

(define (reverse-for-each proc lis)
  (for-each proc (reverse lis)))

(tree-walk for-each print
           '((1 2 3) 4 5 (6 (7 8))))

(tree-walk reverse-for-each print
           '((1 2 3) 4 5 (6 (7 8))))

(tree-walk map (lambda (x) (* x 2))
           '((1 2 3) 4 5 (6 (7 8))))

(define (reverse-map proc lis)
  (map proc (reverse lis)))

(tree-walk reverse-map (lambda (x) x)
           '((1 2 3) 4 5 (6 (7 8))))

(define (reversed walker)
  (lambda (proc lis)
    (walker proc (reverse lis))))

(reversed map)

((reversed map) + '(1 2 3 4))

(tree-walk (reversed map) (lambda (x) x)
           '((1 2 3) 4 5 (6 (7 8))))



