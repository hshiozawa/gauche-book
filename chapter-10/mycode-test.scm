(use gauche.test)

(test-start "mycode.scm")

(load "./mycode")

(test* "last-pair #1" '(3) (last-pair '(1 2 3)))

(test* "last-pair #2" '(1) (last-pair '(1)))

(test* "last-pair #3" '(2 . 3) (last-pair '(1 2 . 3)))

(test* "last-pair / error" *test-error* (last-pair '()))

(test-end)


