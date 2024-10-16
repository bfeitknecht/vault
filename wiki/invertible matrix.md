
An **invertible matrix** $M$ is a [[square matrix]] that has a *unique* [[multiplicative inverse]] $M^{-1}$, i.e.
$$
MM^{-1}=M^{1}M=I_{m}
$$

Matrix inversion is the process of finding the matrix which when multiplied by the original matrix gives the [[identity matrix]].

# Lemma 3.8

Let $M$ be an $m \times m$ matrix with two inverses $A$ and $B$. Then $A=B$.
$$
A=I_{m}A = (BM)A = B(MA) = BI = B
$$
$\square$


# Lemma 3.9

Let $A$ and $B$ be invertible $m \times m$ matrices. Then $AB$ is invertible and $(AB)^{-1} = B^{-1} A^{-1}$.


# Lemma 3.10

Let $A$ be an invertible $m \times m$ matrix. Then the [[transpose]] $A^{\top}$ is invertible and $(A^{\top})^{-1}=(A^{-1})^{\top}$.


# Theorem 3.11

Let $A$ be an $m \times m$ matrix. The following statements are equivalent.
![[LinAlg-plan-w04.pdf#page=7&rect=68,654,554,722|LinAlg-plan-w04, p.7]]

![[LinAlg-plan-w04.pdf#page=7&rect=137,568,503,626|LinAlg-plan-w04, p.7]]

