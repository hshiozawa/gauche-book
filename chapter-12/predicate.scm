(number? 1.0)
(number? #\a)

(complex? 1.0+i)
(complex? #\a)

(real? 1.0)
(real? +inf.0)
(real? 1.0+i)

(rational? 1.2)
(rational? +inf.0)

(integer? 1.0)
(integer? 1.2)

(zero? 0.0)
(zero? 1.0)

(positive? 1.0)
(positive? -1.0)

(negative? 1.0)
(negative? -1.0)

(odd? 1.0)
(odd? 2.0)
;; (odd? 2.1) => error

(even? 1.0)
(even? 2.0)

(class-of 3)
(class-of 3.0)
(class-of 3.0+i)



