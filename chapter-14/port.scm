(define input-port (open-input-file "sample.scm"))

(read input-port)

(close-input-port input-port)

(read input-port)

(define output-port (open-output-file "sample.scm" :if-exists :append))

(write '#(3 4 5) output-port)

(close-output-port output-port)

(call-with-input-file "sample.scm" (lambda (port) (read port)))

(call-with-output-file "sample.scm" (lambda (port) (write '#(1 2) port)))

