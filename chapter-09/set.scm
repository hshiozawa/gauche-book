(define (has-item? player item)
  (member item (cdr (assoc 'inventory player))))

(define p (cons 1 2))
p


(set! (car p) 3)

(set! (cdr p) 4)

(set! (cdr p) (cons 1 (cdr p)))

(push! (cdr p) 2)

(define (add-item! player item)
  (let ((p (assoc 'inventory player)))
    (push! (cdr p) item)))

(define (delete-item! player item)
  (let ((p (assoc 'inventory player)))
    (set! (cdr p) (delete-1 item (cdr p)))))

(define x 1)

(set! x (+ 1 x))

(define (get-hp player)
  (cdr (assoc 'hp player)))
(define (add-hp! player n)
  (let ((p (assoc 'hp player)))
    (set! (cdr p) (+ n (cdr p)))))
