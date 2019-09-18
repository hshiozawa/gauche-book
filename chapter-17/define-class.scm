(define-class <book> ()
  ((author :init-keyword :author :init-value "詠み人知らず")
   (title :init-keyword :title :init-value "無題")
   (timestamp :init-form (sys-time))))
