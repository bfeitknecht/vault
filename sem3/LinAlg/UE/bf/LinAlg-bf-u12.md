
# 3        Recursively Defined Sequences ![[LinAlg-e-u12.pdf#page=1&rect=79,162,516,193|LinAlg-e-u12, p.1]]


It holds that $a_{n+1} = -a_{n} + 6a_{n-1}$, by the recurrence relation. Then, let $\mathbf{v}_{n} = \begin{bmatrix} a_{n+1} \\ a_{n} \end{bmatrix}$. It follows that $A\mathbf{v}_{n} = \mathbf{v}_{n+1}$ for $A = \begin{bmatrix} -1 & 6 \\ 1 & 0 \end{bmatrix}$. Since $A$ is full rank, it has a complete set of real eigenvectors. Thus it's possible to diagonalize it, $A = U \Lambda U^{-1}$, where $\Lambda = \begin{bmatrix} \lambda_{1} & 0 \\ 0 & \lambda_{2}\end{bmatrix}$ is the diagonal matrix containing the eigenvalues and $U = \begin{bmatrix} \mathbf{u}_{1} & \mathbf{u}_{2} \end{bmatrix}$ contains the corresponding eigenvectors.

First, find the eigenvalues of $A$ through examination of the characteristic polynomial.
$$
\begin{align}
\overbrace{ \det(A - \lambda I) }^{ \det\left(\begin{bmatrix}
-1-\lambda & 6 \\
1 & -\lambda
\end{bmatrix}\right) } &= \lambda^{2} + \lambda - 6 \\
&= (\lambda + 3) (\lambda - 2) \implies \lambda_{1} = 2, \lambda_{2} = -3
\end{align}
$$

Then, let's derive the associated eigenvectors.
$$
\begin{align}
(A - \lambda_{1}I)\mathbf{u}_{1} = \mathbf{0} 
\implies&
\overbrace{ \left( \begin{bmatrix}
-1 & 6 \\
1 & 0
\end{bmatrix} -  \begin{bmatrix}
2 & 0 \\
0 & 2
\end{bmatrix} \right)  }^{ \begin{bmatrix}
-3 & 6 \\
1 & -2
\end{bmatrix} }
\begin{bmatrix}
u_{11} \\
u_{12}
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix} \\
\implies& -3u_{11} + 6u_{12} = 0 \\
\implies& u_{11} = 2u_{12} \\
\implies& \mathbf{u}_{1} = \begin{bmatrix}
2 \\
1
\end{bmatrix} \\
 \\
(A - \lambda_{2}I) \mathbf{u}_{2} = \mathbf{0} \implies&
\overbrace{ \left( \begin{bmatrix}
-1 & 6 \\
1 & 0
\end{bmatrix} - \begin{bmatrix}
-3 & 0 \\
0 & -3
\end{bmatrix} \right)
 }^{ \begin{bmatrix}
2 & 6 \\
1 & 3
\end{bmatrix} }
\begin{bmatrix}
u_{21} \\
u_{22}
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix} \\
\implies& 2u_{21} + 6u_{22} = 0 \\
\implies& u_{21} = -3u_{22} \\
\implies& \mathbf{u}_{2} = \begin{bmatrix}
-3 \\
1
\end{bmatrix}
\end{align}
$$

Finally, we conclude that $\mathbf{v}_{n} = A^{n}\mathbf{v}_{0} = U \Lambda^{n} U^{-1} \mathbf{v}_{0}$. This can be written as a linear combination of the eigenvectors, $\mathbf{v}_{n} = c_{1} \mathbf{u}_{1} \lambda_{1}^{n} + c_{2} \mathbf{u}_{2} \lambda_{2}^{n}$. Through substitution of the previously computed values, this simplifies to the following, from which we can derive the values $c_{1}, c_{2}$.
$$
\begin{align}
&\mathbf{v}_{n} = \begin{bmatrix}
2 c_{1} 2^{n} - 3 c_{2} (-3)^{n} \\
c_{1} 2^{n} + c_{2} (-3)^{n}
\end{bmatrix} &(n = 0) \\
\implies& \mathbf{v}_{0} = \begin{bmatrix}
1 \\
1
\end{bmatrix}
= \begin{bmatrix}
2 c_{1} - 3 c_{2} \\
c_{1} + c_{2}
\end{bmatrix} \\
\implies& c_{1} = \frac{1}{5}, c_{2} = \frac{4}{5}
\end{align}
$$

Since $a_{n} = \begin{bmatrix} 0 \\ 1 \end{bmatrix} \mathbf{v}_{n}$, we have shown that for $\alpha = \lambda_{1} = 2$ and $\beta = \lambda_{2} = -3$ it holds that $a_{n} = \frac{4}{5}\alpha^{n} + \frac{1}{5}\beta^{n}$.
$\square$
