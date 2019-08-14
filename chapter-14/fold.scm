(with-input-from-file "test.txt"
  (lambda ()
    (port-fold (lambda (line count)
                 (format #t "~3d ~a\n" count line)
                 (+ count 1))
               1
               read-line)))

(with-input-from-file "test.txt"
  (lambda ()
    (port->string (current-input-port))))
