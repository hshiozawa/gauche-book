;; 定義
(define func (lambda (a b . c) a))

;; MIT
(define (func a b . c) a))

;; (define (func a b . c) a) => (define func (lambda (a b . c) a))
(define (mit-form->primitive-form expr)
  (let ((def (car expr))
        (name (car (car (cdr expr))))
        (args (cdr (car (cdr expr))))
        (body (cdr (cdr expr))))
    (cons def
          (cons name
                (cons (cons 'lambda
                            (cons args body)) '())))))

(mit-form->primitive-form '(define (func a b . c) (print a)))

(mit-form->primitive-form '(define (func a b . c) (cons a (cons b c))))

(mit-form->primitive-form '(define (func . a) (append a a)))

;; (define func (lambda (a b . c) a)) => (define (func a b . c) a) 
(define (primitive-form->mit-form expr)
  (let ((def (car expr))
        (name (car (cdr expr)))
        (args (car (cdr (car (cdr (cdr expr))))))
        (body (cdr (cdr (car (cdr (cdr expr)))))))
    (cons def
          (cons (cons name args)
                body))))

(primitive-form->mit-form '(define func (lambda (a b . c) (print a))))

(primitive-form->mit-form '(define func (lambda (a b . c) (cons a (cons b c)))))

(primitive-form->mit-form '(define func (lambda a (append a a))))
