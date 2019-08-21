(cons "abc" "def")
(cons (cons "abc" "def") "ghi")

(define text (cons (cons "abc" (cons "d" "ef")) (cons "ghi" "jkl")))

(define (write-tree text port)
  (cond [(pair? text) (write-tree (car text) port)
                      (write-tree (cdr text) port)]
        [(string? text) (display text port)]
        [else (error "A type except string is found.")]))

(call-with-output-string (lambda (port) (write-tree text port)))

(define (tree->string text)
  (call-with-output-string (cut write-tree text <>)))

(tree->string text)

