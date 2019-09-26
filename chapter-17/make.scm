(define-class <count-instance-meta> (<class>)
  ((num-of-instance :init-value 0)))

(define-class <count-instance-mixin> ()
  ()
  :metaclass <count-instance-meta>)

(define-method make ((klass <count-instance-meta>) . initargs)
  (inc! (ref klass 'num-of-instance))
  (next-method))

(ref <count-instance-mixin> 'num-of-instance)

(make <count-instance-mixin>)

(define-class <myclass> (<count-instance-mixin>) ())

(ref <myclass> 'num-of-instance)

(make <myclass>)


