;; value.hy
(defclass Value [] 
    (defn __init__ [self] None))
(defclass numV [Value] 
    (defn __init__ [self n] 
    (setv self.n n)))
(defclass stringV [Value] 
    (defn __init__ [self s] 
    (setv self.s s)))
(defclass boolV [Value] 
    (defn __init__ [self b]
    (setv self.b b)))
(defclass closV [Value] 
    (defn __init__ [self params body env]
     (setv self.params params) 
     (setv self.body body) 
     (setv self.env env)))
(defclass primV [Value] 
    (defn __init__ [self fn] 
    (setv self.fn fn)))


;; Converts a Value into a string representation
(defn serialize [val]
  (cond
    [(isinstance val numV) (str val.n)]
    [(isinstance val stringV) (++ "\"" val.s "\"")] ;; Wrap strings in quotes
    [(isinstance val boolV) (if val.b "true" "false")]
    [(isinstance val closV) "#<procedure>"]
    [(isinstance val primV) "#<primop>"]
    [True (raise (Exception "QWJZ: Unknown value type"))]))
