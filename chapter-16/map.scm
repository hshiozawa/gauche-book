(define table (make-hash-table))

(hash-table-put! table 'name "Gauche")
(hash-table-put! table 'version "0.8.12")

(hash-table-get table 'name)
(hash-table-get table 'version)
(hash-table-get table 'encoding)

(define table (make-hash-table 'string=?))

(hash-table-put! table "key1" 1)
(hash-table-put! table "key2" 2)

(hash-table-get table "key1")
(hash-table-get table "key2")

(hash-table-delete! table "key1")

(hash-table-get table "key1")

(define table (hash-table 'eq? '(key1 . 1) '(key2 . 2) '(key3 . 3)))
(hash-table-keys table)
(hash-table-values table)

(hash-table-for-each table (cut print <> ":" <>))
(hash-table-map table (cut cons <> <>))

(define table (make-tree-map = <))
(tree-map-put! table 1 10)
(tree-map-put! table 2 20)
(tree-map-get table 1)
(tree-map-get table 2)

(tree-map-min table)
(tree-map-max table)

(tree-map-pop-min! table)
(tree-map-pop-max! table)






