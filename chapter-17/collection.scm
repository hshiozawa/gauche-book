(use gauche.collection)

(size-of '#(1 2 3))
(size-of '(1 2 3))

(fold + 0 '(1 2 3))

(filter char-alphabetic? "b914qq")

(filter-to <string> char-alphabetic? "b9q144")

(map-to <vector> char->integer "hello")
(map char->integer "hello")

(define (same-type-map proc coll)
  (map-to (class-of coll) proc coll))
(same-type-map (cut + 1 <>) '(1 2 3))
(same-type-map (cut + 1 <>) '#(1 2 3))

(coerce-to <list> "abc")
(group-collection '(1 2 3 2 3 1 2 1 2 3 2 3))
(group-collection '(1 2 3 2 3 1 2 1 2 3 2 3) :key odd?)


