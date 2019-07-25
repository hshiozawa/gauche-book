"hello"

(string? "hello")
(string? 1)

(string-length "hello")
(string-ref "あいうえお" 0)

(use srfi-13)

(string-null? "abc")
(string-null? "")

(string #\あ #\い #\う)
(string #\1 #\2 #\3)

(string-concatenate '("Hello" " world"))
(list->string '(#\a #\b #\c))

(write-to-string '(1 "abc" "\"" #\z))
(x->string '(1 "abc" "\"" #\z))

#`"The answer is ,(* 6 7)."

(define *answer* 42)

#`"The answer is ,|*answer*|."

(define (hello) (print "Hello World!"))
(with-output-to-string hello)

(string->list "日月火水木金土")

(string-append "foo" "bar" "buz")

(string-join '("foo" "bar" "buz") "/")

(string-join '("foo" "bar" "buz") "/" 'infix)

(string-join '("foo" "bar" "buz") "/" 'prefix)

(string-join '("foo" "bar" "buz") "/" 'suffix)

(string-split "foo:bar:buz" #\:)

(string-split "foo:::bar:buz" #/:+/)

(substring "abcdefg" 2 5)

(string-copy "hello")

(string-copy "hello" 3)

(string-scan "fkdjafkd" "dja")

(string-scan "fkdjafkd" "djx")
