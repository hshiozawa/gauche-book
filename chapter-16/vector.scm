'#(1 'a "hello")
'#(1 '(a b) #(#t #f))

(make-vector 5)
(make-vector 5 'blah)

(vector 1 2 3)
(vector)

(list->vector '(1 2 3))

(define v '#(a b c))
(vector-ref v 0)
(vector-ref v 3)
(vector-length v)

v

(vector-set! v 1 200)

