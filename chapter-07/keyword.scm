:age

(keyword? :age)

(define a :age)

(keyword? a)

(make-keyword 'age)

(define (person . args)
  (let-keywords args ((name "Anonymous")
                      (age "unknown")
                      . other-args)                
                (print name " is " age " year(s) old.")
                (print "Other info: " other-args)))

(person :name "Hajime" :age 32)
(person)
(person :age 7 :name "Taro")
(person :age 7 :name "Taro" :birth 1987 :sex "male")

  
