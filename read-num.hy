(defn read-num []
  (print "> ")
  (let [input (input)]
    (try
      (do
        (setv num (float input)) ;;converts input to number if possible
          (print "You entered:" num)
        num)
      (except [ValueError]
        (print "Error: Input is not a valid number.")
        (raise)))))

(read-num)


