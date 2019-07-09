(define (get-player-attr player attr)
  (cdr (assoc attr player)))
(define (update-player-attr! player attr updater)
  (let ((p (assoc attr player)))
    (set! (cdr p) (updater (cdr p)))))

(define (get-inventory player)
  (get-player-attr player 'inventory))
(define (has-item? player item)
  (member item (get-inventory player)))
(define (delete-item! player item)
  (update-player-attr! player 'inventory (cut delete-1 item <>)))
(define (add-item! item)
  (update-player-attr! player 'inventory (cut cons item <>)))
(define (get-hp player)
  (get-player-attr player 'hp))
(define (add-hp! player n)
  (update-player-attr! player 'hp (cut + n <>)))
(define (get-mp player)
  (get-player-attr player 'mp))
(define (add-mp! player n)
  (update-player-attr! player 'mp (cut + n <>)))
(define (get-position player)
  (get-player-attr player 'position))
(define (set-position! player pos)
  (update-player-attr! player 'position (lambda (_) pos)))
