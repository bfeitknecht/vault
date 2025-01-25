
The **inverse** of $M \in \mathrm{Mat}_{n}(\mathbb{K})$ is the *unique* [[matrix]] $M^{-1}$ such that that the [[matrix-matrix multiplication]] with $M$ yields the [[identity matrix]] $MM^{-1}=I$. The process of finding the inverse of some matrix is called *inversion*.

We can use the [[adjugate matrix]] and [[determinant]] to invert an arbitrary matrix $M$, i.e. $M^{-1}=\frac{1}{\det(M)} \cdot \mathrm{adj}(M)$.


The following hold true for invertible matrices $M$
- Let $M$ have two inverses $A$ and $B$. Then $A=B$, i.e. the inverse of a matrix is **unique**, since $A=IA = (BM)A = B(MA) = BI = B$.
- Let $A$ and $B$ be invertible matrices. Then $AB$ is invertible and the inversion **distributes** respective to matrix multiplication, $(AB)^{-1} = B^{-1} A^{-1}$.
- Let $A$ be an invertible $m \times m$ matrix. Then the [[transpose]] $A^\mathsf{T}$ is invertible and **commutes** with respect to transposition, $(A^\mathsf{T})^{-1}=(A^{-1})^\mathsf{T}$.

Additionally, the statements below are equivalent for a matrix $A$.
1. $A$ is invertible.
2. There exists $\forall \mathbf{b} \in \mathbb{K}^{m}$ exactly one solution $\mathbf{x} \in \mathbb{K}^{n}$ to the [[linear system of equations (LSE)]] $A\mathbf{x} = \mathbf{b}$.
3. The [[row and column vectors]] of $A$ are linearly independent.
4. The determinant is non-zero, $\det(A) \neq 0$
