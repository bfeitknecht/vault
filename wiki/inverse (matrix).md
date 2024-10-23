
For some $m \times n$ [[invertible matrix]] $M$, its **inverse** is the *unique* [[matrix]] $M^{-1}$ such that that the [[matrix product]] with $M$ gives the [[identity matrix]] $MM^{-1}=I_{m}$. The process of finding the inverse of some matrix is called *inversion*.

We can use the [[adjugate matrix]] and [[determinant]] to invert an arbitrary matrix $M$, i.e. $M^{-1}=\frac{1}{\det(M)} \cdot \mathrm{adj}(M)$.


# Properties

## Lemma 3.8
Let $M$ be an $m \times m$ matrix with two inverses $A$ and $B$. Then $A=B$, i.e. the inverse of a matrix is **unique**, since $A=I_{m}A = (BM)A = B(MA) = BI_{m} = B$.

## Lemma 3.9
Let $A$ and $B$ be invertible $m \times m$ matrices. Then $AB$ is invertible and the inversion **distributes** respective to matrix multiplication, $(AB)^{-1} = B^{-1} A^{-1}$.

## Lemma 3.10
Let $A$ be an invertible $m \times m$ matrix. Then the [[transpose]] $A^{\top}$ is invertible and **commutes** with respect to transposition, $(A^{\top})^{-1}=(A^{-1})^{\top}$.

## Theorem 3.11
Let $A$ be an $m \times m$ matrix. The following statements are equivalent.
![[LinAlg-plan-w04.pdf#page=7&rect=68,654,554,722|LinAlg-plan-w04, p.7]]
