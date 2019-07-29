#/^a/

(rxmatch #/^a/ "abc")

(#/^a/ "abc")

(define m (#/bc/ "abcd"))

(rxmatch-substring m)
(rxmatch-before m)
(rxmatch-after m)

(m)
(m 'before)
(m 'after)

(m 0)

(cond [(#/bc/ "abcd") => (cut <>)])
(and-let* ((m (#/bc/ "abcd")))
          (map (cut m <>) '(before 0 after)))

(rxmatch-case "gauche@example.com"
              [#/^([a-z]+)@([a-z.]+)$/i (all acct domain)
                  (print "all=" all " acct=" acct " domain=" domain)])

(string->regexp "^a")
(string->regexp "^a" :case-fold #t)

(regexp->string #/^a/)
(regexp->string #/^a/i)


