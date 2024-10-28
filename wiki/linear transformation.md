
A **linear transformation**, also known as a **linear map**, is applying some [[matrix]] $A \in \mathbb{R}^{m\times n}$ to an element in a [[vector space]], i.e. a [[vector]] $\mathrm{v} \in \mathbb{R}^n$. Specific matrix types result in unique transformations.

Such a map can be defined as a [[function]] $T:\mathbb{R}^n \to \mathbb{R}^m$ and exhibits two properties.
(i)     linearity (closure under [[vector addition|addition]]): $T(\mathrm{x}+\mathrm{y}) = T(\mathrm{x})+T(\mathrm{y})$
(ii)    homogeneity (closure under [[scalar multiplication|multiplication]]): $T(\lambda \mathrm{x})=\lambda T(\mathrm{x})$
(\*iii)   combination: $T(\lambda \mathrm{x}+ \mu \mathrm{y})=\lambda T(\mathrm{x})+ \mu T(\mathrm{y})$

Furthermore, every linear transformation exhibits [[commutativity]] under vector addition and scalar multiplication.
![[LinAlg-plan-w03.pdf#page=2&rect=77,254,537,370|LinAlg-plan-w03, p.2]]

Every linear transformation can be realized through a *unique* matrix.

The [[composition]] of linear transformations is achieved through [[matrix multiplication]], let $T_{A}:\mathbb{R}^n \to \mathbb{R}^a$ and $T_{B}: \mathbb{R}^b \to \mathbb{R}^n$ be two linear transformations. The proof is given by applying the [[associativity]] of matrix multiplication and the function definitions.
$$
T_{A}(T_{B}(\mathrm{x})) = T_{AB}(x)
$$
