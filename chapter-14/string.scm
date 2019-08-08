(define in (open-input-string "aiueo"))

(read in)

(define out (open-output-string))

(write 123 out)

(get-output-string out)

(call-with-input-string "aiueo" (lambda (port) (read port)))
(call-with-output-string (lambda (port) (write 123 port)))

(close-input-port in)
(close-output-port out)

  
