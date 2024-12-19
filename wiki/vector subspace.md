
A **vector subspace** or **linear subspace** $U$ of a [[vector space]] $V$ is a non-empty [[subset]] of $V$ that exhibits [[closure]] under [[vector addition]] and [[scalar multiplication]], i.e. the sum of two elements of $U$ and the product of an element  of $U$ by a scalar belongs to $U$. This implies that every [[linear combination]] of elements of $U$ belongs to $U$.

A subspace is a *vector space* for the induced addition and scalar multiplication, i.e. the closure property implies that the axioms of a vector space are satisfied. The closure property also implies that every [[intersection]] of linear subspaces is a linear subspace.

Every vector spaces is equipped with at least two (trivial) vector subspaces, the *zero vector space* consisting of the zero vector alone and the entire vector space itself.


# Properties


## Four Fundamental Subspaces

```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
W &&&&&&& W \\
\\
&&& V & V \\
{\mathrm{N}(A^{\top})} \\
&&& {\mathrm{C}(A^{\top})} &&&& {\mathrm{C}(A)} \\
&&&& {\mathrm{N}(A)} \\
\\
\mathbf{0}_{W} &&& \mathbf{0}_{V} & \mathbf{0}_{V} &&& \mathbf{0}_{W}
\arrow[no head, from=1-1, to=4-1] 
\arrow[from=1-1, to=5-4] 
\arrow[no head, from=1-8, to=5-8] 
\arrow[no head, from=3-4, to=5-4] 
\arrow[from=3-5, to=5-8] 
\arrow[no head, from=3-5, to=6-5] 
\arrow[no head, from=4-1, to=8-1] 
\arrow[from=4-1, to=8-4] 
\arrow[no head, from=5-4, to=8-4] 
\arrow[no head, from=5-8, to=8-8] 
\arrow[no head, from=6-5, to=8-5] 
\arrow[from=6-5, to=8-8] 
\arrow[from=8-1, to=8-4] 
\arrow[from=8-5, to=8-8]
\end{tikzcd}

\end{document}
```



## Complementary Subspace


## Orthogonal Subspace


## Isomorphisms

