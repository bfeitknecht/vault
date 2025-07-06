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
- partial application, operator section

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

> [!quote] Mantra
> - arrows associate to the right, $a \to b \to c = a \to (b \to c)$
> - evaluation associates to the left, `f g a == (f g) a`
>     - exception: `f $ g a == f (g a)`



## Map, Folds
![[FMFP-s02b-lists.pdf#page=43&rect=167,215,602,430|FMFP-s02b-lists, p.42]]



![[FMFP-s02b-lists.pdf#page=46&rect=166,206,615,427|FMFP-s02b-lists, p.45]]


Conversely, `fodl f z [1, 2, 3]` expands to $f(f(f(z , 1), 2), 3)$
