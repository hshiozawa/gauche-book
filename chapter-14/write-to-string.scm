(write-to-string '(1 "abc" "\"" #\z))
(read-from-string "(1 \"abc\" \"\\\"\" #\\z)")

(define (my-write-to-string obj)
  (call-with-output-string
   (lambda (port) (write obj port))))

(define (my-read-from-string str)
  (call-with-input-string
   str
   (lambda (port) (read port))))

(define output (my-write-to-string '(1 "abc" "\"" #\z)))
(my-read-from-string output)

(my-write-to-string '(1 "abc" "\"" #\z))
