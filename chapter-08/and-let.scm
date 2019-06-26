(let ((a (f x)))
  (if a
      (let ((b (g a)))
        (if b
            (let ((c (h b)))
              ...)))))

(cond ((f x)
       => (lambda (a)
            (cond ((g a)
                   => (lambda (b)
                        (cond ((h b)
                               => (lambda (c)
                                    ...)))))))))

(and-let* ((a (f x))
           (b (g a))
           (c (h b)))
          ...)


              
