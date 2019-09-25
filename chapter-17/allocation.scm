(define-class <instance-counter> ()
  ((count :init-value 0 :allocation :each-subclass)))

(define-method intialize ((self <instance-counter>) initargs)
  (next-method)
  (inc! (ref self 'count)))

(define-class <categorized-book> (<book> <instance-counter>)
  ((category :init-keyword :category)))

(d (make <categorized-book> :title "あ"))
(d (make <categorized-book> :title "い"))
