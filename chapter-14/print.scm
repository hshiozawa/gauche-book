(display #\a)

(display "hello world\n")

(print "The answer is " 42 ".")

(format #t "Result = |~10@a|\n" (* 3 4))

(format #t "|~,,,,30a|\n" "The quick brown fox jumps over the lazy dog")

(format #t "~d" 123456789)

(format #t "~b" 123456789)

(format #t "~o" 123456789)

(format #t "~x" 123456789)

(format #t "~8,'0x" 65535)
