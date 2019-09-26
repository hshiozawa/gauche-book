(define-class <foo-meta> (<class>)
  ((number :init-value 10)))

(define-class <foo> ()
  ()
  :metaclass <foo-meta>)

(ref <foo> 'number)

(define foo (make <foo>))
(ref foo 'number)

(define-class <foo2-meta> (<class>)
  ((items :init-value '(a b c))))

(define-class <foo-mixin> ()
  ()
  :metaclass <foo-meta>)

(define-class <foo2-mixin> ()
  ()
  :metaclass <foo2-meta>)

(define-class <foo3> (<foo-mixin> <foo2-mixin>)
  ())

(ref <foo3> 'number)
(ref <foo3> 'items)


