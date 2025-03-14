(defclass ExprC []
  (defn __init__ [self]
    None))

(defclass StringC [ExprC]
  (defn __init__ [self s]
    (setv self.s s)))

(defclass numC [ExprC]
  (defn __init__ [self n]
    (setv self.n n)))

(defclass varC [ExprC]
  (defn __init__ [self name]
    (setv self.name name)))

(defclass appC [ExprC]
  (defn __init__ [self fun args]
    (setv self.fun fun)
    (setv self.args args)))

(defclass FunDefC [ExprC]
  (defn __init__ [self params body]
    (setv self.params params)
    (setv self.body body)))


(defclass ifC [ExprC]
  (defn __init__ [self test then-expr else-expr]
    (setv self.test test-expr)
    (setv self.then-expr then-expr)
    (setv self.else-expr else-expr)))


(defclass Binding []
  (defn __init__ [self name val]
    (setv self.name name)
    (setv self.val val)))


(setv __all__ ["ExprC" "StringC" "numC" "varC" "appC" "FunDefC" "ifC" "Binding"])
