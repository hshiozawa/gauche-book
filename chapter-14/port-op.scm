(port? "hello")

(define in (open-input-string "hello"))

(port? in)

(input-port? in)
(output-port? out)

(close-input-port in)

(port-closed? in)

(port-closed? "a")
