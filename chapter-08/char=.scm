(char=? #\a #\a)
(char=? #\a #\A)

(string=? "abc" "abc")
(string=? "abc" "ABC")
(string=? 1 1) ; error

(char-ci=? #\a #\A)
(string-ci=? "abc" "ABC")
