
**Haskell** is a purely functional programming language.


# Goodies
- `null xs = xs == []` returns true if the list is nil (empty list)
- `span p xs -> (a, x:bs)` where `xs = a ++ (x:bs)` and `x` is the first element such that `p x == False`




%%- `iter n f x` returns the n-fold composition of a function with itself, i.e. $f^{n}(x)$%%
