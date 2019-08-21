(use text.html-lite)
(html:tr (map html:td (list "日" "月" "火")))

(use text.tree)
(tree->string (html:tr (map html:td (list "日" "月" "火"))))

(write-tree (html:tr (map html:td (list "日" "月" "火"))))
