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


## Map, Folds
![[FMFP-s02b-lists.pdf#page=43&rect=167,215,602,430|FMFP-s02b-lists, p.42]]

![[FMFP-s02b-lists.pdf#page=46&rect=166,206,615,427|FMFP-s02b-lists, p.45]]


$$
\begin{align}
T_{m} &=  T_{m-1} + m = 1 + 2 \dots + m\\
&= \sum_{k \in [m]}k  = \frac{n \cdot (n+1)}{2}  \\
&= \frac{n^{2} + n}{2}
\end{align}
$$