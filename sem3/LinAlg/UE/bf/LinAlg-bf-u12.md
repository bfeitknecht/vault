
# 3		Recursively Defined Sequences ![[LinAlg-e-u12.pdf#page=1&rect=79,162,516,193|LinAlg-e-u12, p.1]]

Let $\mathbf{v}_{i} = \begin{bmatrix} a_{i+1} \\ a_{i} \end{bmatrix}$. Then by the recurrence relation, it holds that $a_{n+1} = -a_{n} + 6a_{n-1}$ . It follows that $A\mathbf{v}_{i} = \mathbf{v}_{i+1}$ for $A = \begin{bmatrix} -1 & 6 \\ 1 & 0 \end{bmatrix}$. Now find eigenvalues of $A$ through examination of the characteristic polynomial.
$$
\begin{align}
\det(A - \lambda I) &= \lambda^{2} + \lambda - 6 \\
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
\implies& \boxed{\mathbf{v}_{1} = \begin{bmatrix}
2 \\
1
\end{bmatrix}} \\
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
\implies& \boxed{\mathbf{v}_{2} = \begin{bmatrix}
-3 \\
1
\end{bmatrix}}
\end{align}
$$

Since $A$ is full rank, it has a complete set of real eigenvectors. Thus it's possible to diagonalize the matrix $A = V \Lambda V^{-1}$, where $\Lambda = \begin{bmatrix} \lambda_{1} & 0 \\ 0 & \lambda_{2}\end{bmatrix}$ is the diagonal matrix containing the eigenvalues and $V = \begin{bmatrix} \mathbf{v}_{1} & \mathbf{v}_{2} \end{bmatrix}$ contains the corresponding eigenvectors.

Finally, we can conclude that $\mathbf{v}_{i} = V \Lambda^{i}V^{-1} \mathbf{v}_{0}$.


