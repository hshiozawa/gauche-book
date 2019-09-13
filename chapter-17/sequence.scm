(use gauche.sequence)

(subseq "abcdef" 2 5)

(define v (vector 'a 'b 'c 'd 'e 'f))

(subseq v 2 5)

(set! (subseq v 2 5) '#(-1 -2 -3))

v

(map-with-index (lambda (i e) (print i ":" e) (cons i e)) "abcde")
