(define-class <book> ()
  ((author :init-keyword :author :init-value "詠み人知らず")
   (title :init-keyword :title :init-value "無題")
   (timestamp :init-form (sys-time))))

(d (make <book> :author "テスト" :title "Gauche"))
(d (make <book> :author "テスト"))

(d (make <book>))

(define book
  (make <book> :author "a" :title "g"))
(ref book 'author)
