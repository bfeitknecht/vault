
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
	{\mathbf{x}, \mathbf{y}} && {T(\mathbf{x}), T(\mathbf{y})} &&& {\mathbf{x}} && {T(\mathbf{x})} \\
	\\
	\\
	{\mathbf{x} + \mathbf{y}} && {T(\mathbf{x} + \mathbf{y}) = T(\mathbf{x}) + T(\mathbf{y})} &&& {\lambda\mathbf{x}} && {T(\lambda\mathbf{x}) = \lambda T(\mathbf{x})}
	\arrow["T", from=1-1, to=1-3]
	\arrow["{+}"', from=1-1, to=4-1]
	\arrow["{+}", from=1-3, to=4-3]
	\arrow["T", from=1-6, to=1-8]
	\arrow["\lambda"', from=1-6, to=4-6]
	\arrow["\lambda", from=1-8, to=4-8]
	\arrow["T", from=4-1, to=4-3]
	\arrow["T", from=4-6, to=4-8]
\end{tikzcd}

\end{document}
```

Every linear transformation can be realized through a *unique* matrix.

The [[composition]] of linear transformations is achieved through [[matrix multiplication]], let $T_{A}:\mathbb{R}^n \to \mathbb{R}^a$ and $T_{B}: \mathbb{R}^b \to \mathbb{R}^n$ be two linear transformations. The proof is given by applying the [[associativity]] of matrix multiplication and the function definitions.
$$
T_{A}(T_{B}(\mathrm{x})) = T_{AB}(x)
$$

