(use util.match)

(define (append . args)
  (match args
         [() '()]
         [(a) a]
         [(a . b) (append2 a (apply append b))]))

(append)
(append '())
(append '(1 2 3))
(append '(1 2 3) '())
(append '(1 2 3) '(4 5 6))

(use util.match)

;; (define (func a b . c) a) => (define func (lambda (a b . c) a))
(define (mit-form->primitive-form expr) 
  (match expr
         [('define (name . args) . body) (list 'define name (list* 'lambda args body))]
         ))

(mit-form->primitive-form '(define (func a b . c) (print a)))

(mit-form->primitive-form '(define (func a b . c) (cons a (cons b c))))

(mit-form->primitive-form '(define (func . a) (append a a)))

;; (define func (lambda (a b . c) a)) => (define (func a b . c) a) 
(define (primitive-form->mit-form expr)
  (match expr
         [('define name ('lambda args . body)) (list* 'define (cons name args) body)]
         ))

(primitive-form->mit-form '(define func (lambda (a b . c) (print a))))

(primitive-form->mit-form '(define func (lambda (a b . c) (cons a (cons b c)))))

(primitive-form->mit-form '(define func (lambda a (append a a))))

