(use gauche.sequence)

(let ((lis (list 'a 'b 'c)))
  (set! (ref lis 0) 'z)
  lis)
