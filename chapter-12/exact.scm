(exact? 100) ; #t
(exact? 1/3) ; #t
(exact? 0.5) ; #f
(exact? (* 100 1/3)) ; #t
(exact? (/ 100 0.5)) ; #f
(inexact? 3) ; #f
(inexact? 3.0) ; #f
(inexact? 0.5+0.5i) ; #t

(exact->inexact 100)
(exact->inexact 1/3)
(inexact->exact 0.5)
(inexact->exact 10.0)



