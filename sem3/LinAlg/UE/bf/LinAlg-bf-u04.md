
# 2.
![[LinAlg-e-u04.pdf#page=1&rect=77,363,512,460|LinAlg-e-u04, p.1]]

Per theorem 3.11, the statement that $A$ is invertible is equivalent to the statement that $A$ has linearly independent column vectors. A matrix has linearly independent column vectors, if its determinant is non-zero, which is given for $a \neq 0$, since $\det(A) = a$.

The inverse of an invertible matrix is given by its adjugate matrix scaled by the reciprocal of its determinant, which is evaluated below.

First, we construct the cofactor matrix $C$.
$$
\begin{align}
C &= \begin{bmatrix}
C_{11} & C_{12} & C_{13} \\
C_{21} & C_{22} & C_{23} \\
C_{31} & C_{32} &  C_{33}
\end{bmatrix} \\ \\

&= \begin{bmatrix}
1 & 0 & 0 \\
-b & a & 0 \\
bd-c & -ad & a 
\end{bmatrix}
\end{align}
$$

Then, we find the adjugate matrix, which is equal to the cofactor‘s matrix transpose, $\mathrm{adj}(A)=C^{\top}$ and multiply it with the scalar $\frac{1}{\det(A)}$.
$$
\begin{align}
A^{-1} &= \frac{1}{\det(A)} \cdot \mathrm{adj(A)} &\text{(def. det and adj)} \\ \\
&= \frac{1}{a} \cdot \begin{bmatrix}
1 & -b & bd-c \\
0 & a & -ad \\
0 & 0 & a 
\end{bmatrix} &\text{(scalar multiplication)} \\ \\

&= \begin{bmatrix}
\frac{1}{a} & -\frac{b}{a} & \frac{bd-c}{a} \\
0 & 1 & -d \\
0 & 0 & 1 
\end{bmatrix}
\end{align}
$$

Thus we have constructed the inverse matrix $A^{-1}$ of $A$.
$\square$
