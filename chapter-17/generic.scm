(define-generic mygeneric)

(class-of mygeneric)

(define-class <logger-generic> (<generic>) ())

(define-generic add :class <logger-generic>)

(class-of add)
