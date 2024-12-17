
# 3		Recursively Defined Sequences ![[LinAlg-e-u12.pdf#page=1&rect=79,162,516,193|LinAlg-e-u12, p.1]]



consider the sequence $a_{0} = a_{1} = 1, (a_{i})_{n\geq2} =-a_{n-1} + 6n_{n-2}$. find $\alpha, \beta$ such that $a_{n}= \frac{4}{5} \alpha^{n} + \frac{1}{5} \beta^{n}$. consider diagonalizing a matrix $A \in \mathbb{R}^{2\times2}$ satisfying $A\mathbf{v}_{i} = \mathbf{v}_{i+1}$ where $\mathbf{v}_{i}=\begin{bmatrix}a_{i+1} \\ a_{i}\end{bmatrix}$.


It holds that $a_{n+1} = -a_{n} + 6a_{n-1}$, by the recurrence relation. Then, let $\mathbf{v}_{n} = \begin{bmatrix} a_{n+1} \\ a_{n} \end{bmatrix}$. It follows that $A\mathbf{v}_{n} = \mathbf{v}_{n+1}$ for $A = \begin{bmatrix} -1 & 6 \\ 1 & 0 \end{bmatrix}$. Since $A$ is full rank, it has a complete set of real eigenvectors. Thus it's possible to diagonalize it, $A = V \Lambda V^{-1}$, where $\Lambda = \begin{bmatrix} \lambda_{1} & 0 \\ 0 & \lambda_{2}\end{bmatrix}$ is the diagonal matrix containing the eigenvalues and $V = \begin{bmatrix} \mathbf{v}_{1} & \mathbf{v}_{2} \end{bmatrix}$ contains the corresponding eigenvectors.

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
(A - \lambda_{1}I)\mathbf{v}_{1} = \mathbf{0} 
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
v_{1} \\ v_{2}
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix} \\
\implies& -3v_{1} + 6v_{2} = 0 \\
\implies& v_{1} = 2v_{2} \\
\implies& \mathbf{v}_{1} = \begin{bmatrix}
2 \\
1
\end{bmatrix} \\
 \\
(A - \lambda_{2}I) \mathbf{v}_{2} = \mathbf{0} \implies&
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
v_{1} \\
v_{2}
\end{bmatrix} = \begin{bmatrix}
0 \\
0
\end{bmatrix} \\
\implies& 2v_{1} + 6v_{2} = 0 \\
\implies& v_{1} = -3v_{2} \\
\implies& \mathbf{v}_{2} = \begin{bmatrix}
-3 \\
1
\end{bmatrix}
\end{align}
$$

Finally, we conclude that $\mathbf{v}_{n} = A^{n}\mathbf{v}_{0} = V \Lambda^{n}V^{-1} \mathbf{v}_{0}$. All that remains is to determine $\alpha, \beta$ such that $a_{n} = \frac{4}{5}\alpha^{n} + \frac{1}{5}\beta^{n}$.

Thus it follows that $\alpha = \lambda_{1} = 2$ and $\beta = \lambda_{2} = -3$.
$\square$

