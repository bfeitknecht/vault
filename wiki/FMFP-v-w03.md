---
module: "[[FMFP]]"
prev: "[[FMFP-v-w02]]"
next: "[[FMFP-v-w04]]"
---

# Info

# Topics
- generic type in haskell
- principal type
- higher order function
- lambda calculus

# Notes
Lambda calculus function application is similar to haskell anonymous functions.
$$
\begin{align}
\lambda x.x 
&\leadsto (\lambda x.x)(y)  \\
&\leadsto (\lambda x.x)[x \to y]  \\
&\leadsto y
\end{align}
$$
```haskell
(\x -> x) y
y :: a
```
