'(lambda (player) (add-hp! player 50))

(lambda (player) (add-hp! player 50))

(cons 'drink (lambda (player) add-hp! player 50))

(list 'player (cons 'drink (lambda (player) add-hp! player 50)))

`(* 0 (+ 1 2))

`(* 3 ,(+ 1 2))

`(a b y c d)

(cons 'a (cons 'b (cons x '(c d))))

(define c 1)
(define d 2)

`(a b ,c ,d e)
