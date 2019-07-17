(guard (e (else "エラー発生!"))
       (car 1))

(guard (e (else e))
       (car 1))

(guard (e (else (print ">>> error! <<<") (raise e)))
       (car 1))

(guard (e ((<io-error> e) "io error")
          ((<read-error> e) "read error")
          (else "other error"))
       (read))

(guard (e ((<io-error> e) "io error")
          ((<read-error> e) "read error")
          (else "other error"))
       (car 1))
