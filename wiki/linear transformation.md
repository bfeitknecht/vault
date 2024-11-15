
A **linear transformation**, also known as a **linear map**, is applying some [[matrix]] $A \in \mathbb{R}^{m\times n}$ to an element in a [[vector space]], i.e. a [[vector]] $\mathrm{v} \in \mathbb{R}^n$. Specific matrix types result in unique transformations.

Such a map can be defined as a [[function]] $T:\mathbb{R}^n \to \mathbb{R}^m$ and exhibits two properties.
(i)     linearity (closure under [[vector addition|addition]]): $T(\mathrm{x}+\mathrm{y}) = T(\mathrm{x})+T(\mathrm{y})$
(ii)    homogeneity (closure under [[scalar multiplication|multiplication]]): $T(\lambda \mathrm{x})=\lambda T(\mathrm{x})$
(\*iii)   combination: $T(\lambda \mathrm{x}+ \mu \mathrm{y})=\lambda T(\mathrm{x})+ \mu T(\mathrm{y})$

Furthermore, every linear transformation exhibits [[commutativity]] under vector addition and scalar multiplication.

```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
	{\mathbf{x}} && {T(\mathbf{x})} &&& {\mathbf{x}, \mathbf{y}} && {T(\mathbf{x}), T(\mathbf{y})} \\
	\\
	{\lambda\mathbf{x}} && {T(\lambda\mathbf{x})} & {\lambda T(\mathbf{x})} && {\mathbf{x} + \mathbf{y}} && {T(\mathbf{x} + \mathbf{y})} & {T(\mathbf{x}) + T(\mathbf{y})}
	\arrow["T", from=1-1, to=1-3]
	\arrow["\lambda"', from=1-1, to=3-1]
	\arrow["\lambda", from=1-3, to=3-3]
	\arrow["T", from=1-6, to=1-8]
	\arrow["{+}"', from=1-6, to=3-6]
	\arrow["{+}", from=1-8, to=3-8]
	\arrow["T", from=3-1, to=3-3]
	\arrow[shorten <=2pt, shorten >=2pt, Rightarrow, no head, from=3-3, to=3-4]
	\arrow["T", from=3-6, to=3-8]
	\arrow[shorten <=3pt, shorten >=3pt, Rightarrow, no head, from=3-8, to=3-9]
\end{tikzcd}

\end{document}
```

![[LinAlg-plan-w03.pdf#page=2&rect=77,254,537,370|LinAlg-plan-w03, p.2]]

Every linear transformation can be realized through a *unique* matrix.

The [[composition]] of linear transformations is achieved through [[matrix multiplication]], let $T_{A}:\mathbb{R}^n \to \mathbb{R}^a$ and $T_{B}: \mathbb{R}^b \to \mathbb{R}^n$ be two linear transformations. The proof is given by applying the [[associativity]] of matrix multiplication and the function definitions.
$$
T_{A}(T_{B}(\mathrm{x})) = T_{AB}(x)
$$



```tikz
\usepackage{tikz-cd}
\begin{document}
\begin{tikzcd}
    T
    \arrow[drr, bend left, "x"]
    \arrow[ddr, bend right, "y"]
    \arrow[dr, dotted, "{(x,y)}" description] & & \\
    K & X \times_Z Y \arrow[r, "p"] \arrow[d, "q"]
    & X \arrow[d, "f"] \\
    & Y \arrow[r, "g"]
    & Z
\end{tikzcd}
\quad \quad
\begin{tikzcd}[row sep=2.5em]
A' \arrow[rr,"f'"] \arrow[dr,swap,"a"] \arrow[dd,swap,"g'"] &&
  B' \arrow[dd,swap,"h'" near start] \arrow[dr,"b"] \\
& A \arrow[rr,crossing over,"f" near start] &&
  B \arrow[dd,"h"] \\
C' \arrow[rr,"k'" near end] \arrow[dr,swap,"c"] && D' \arrow[dr,swap,"d"] \\
& C \arrow[rr,"k"] \arrow[uu,<-,crossing over,"g" near end]&& D
\end{tikzcd}
\end{document}
```