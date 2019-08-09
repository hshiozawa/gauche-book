(current-input-port)

(define in (open-input-string "abc"))
(with-input-from-port in (lambda () (current-input-port)))

(define out (open-output-string))
(with-output-to-port out (lambda () (current-output-port)))

(with-input-from-string "abc" (lambda () (current-input-port)))

(with-output-to-string (lambda () (write '())))
