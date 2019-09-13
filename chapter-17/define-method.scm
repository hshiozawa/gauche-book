(define-method ref ((n <integer>) (index <integer>))
  (logbit? index n))

(ref #b10101010 3)

(define-method add ((m <number>) (n <number>))
  (+ m n))

(add 3 4)
(add "koolau" "kaurai")

(define-method add ((str1 <string>) (str2 <string>))
  (string-append str1 str2))

(define-method add (x y)
  (format #t "~s and ~s was passed.\n" x y))

(add '(1 2 3) #f)

(class-precedence-list <string>)

(define-method add ((lst1 <list>) (lst2 <list>))
  (next-method lst1 lst2)
  (append lst1 lst2))

(add '(1 2 3) '(4 5 6))
