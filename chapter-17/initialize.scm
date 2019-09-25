(define-method initialize ((self <book>) initargs)
  (next-method)
  (when (equal? (ref self 'title) "枕草子")
        (set! (ref self 'author) "清少納言")))

(d (make <book> :title "枕草子"))
(d (make <book> :title "源氏物語"))
