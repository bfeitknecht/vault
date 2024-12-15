
# 3		Recursively Defined Sequences ![[LinAlg-e-u12.pdf#page=1&rect=79,162,516,193|LinAlg-e-u12, p.1]]


![[LinAlg-e-u12.pdf#page=1&rect=80,112,514,157|LinAlg-e-u12, p.1]]




Let $\mathbf{v}_{i} = \begin{bmatrix} a_{i+1} \\ a_{i} \end{bmatrix}$. Then by the recurrence relation, it holds that $a_{n+1} = -a_{n} + 6a_{n-1}$. It follows that $A\mathbf{v}_{i} = \mathbf{v}_{i+1}$ for $A = \begin{bmatrix} -1 & 6 \\ 1 & 0 \end{bmatrix}$. Now find eigenvalues of $A$ through examination of the characteristic polynomial.
$$
\begin{align}
\det(A - \lambda I) &= \lambda^{2} + \lambda - 6 \\
&= (\lambda + 3) (\lambda - 2) \implies \lambda_{1} = 2, \lambda_{2} = -3
\end{align}
$$

