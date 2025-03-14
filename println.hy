(defn println [x]
  "Print argument only if string. Error otherwise"
  (if (isinstance x str)
      (print x)  ;; print if string
      (print "Error: Argument is not a string.")))  ;; Otherwise, print an error message

;; Example usage:
(println "Hello World")  ;; Prints Hello, Hy!
(println 123)           ;; error
(println ['a 'b 'c])    ;; error



