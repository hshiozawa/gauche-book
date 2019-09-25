(class-precedence-list <book>)

(define-class <iherited-list> (<list>) ())

(define-class <categorized-book> (<book>)
  ((category :init-keyword :category)))

(d (make <categorized-book> :title "徒然草" :author "吉田兼好" :category "随筆"))
(d (make <categorized-book> :title "万葉集" :category "歌集"))
