
# 2 ![[LinAlg-e-u06.pdf#page=1&rect=79,197,516,258|LinAlg-e-u06, p.1]]
From the previous exercise we know the following.
> $1a)$ hyperplane $H$ is a subspace of $V$
> $1b)$ dimension of hyperplane $H$ is $\dim(V)-1$

Furthermore, we can visualize a matrix $A \in \mathbb{R}^{2 \times m}$ as given below.
$$
A = \begin{bmatrix}
\ \textemdash &\mathbf{u}_{1} &\textemdash\ \\
\ \textemdash &\mathbf{u}_{2} &\textemdash\ \\
\end{bmatrix}
$$

Then the set condition for $S^{\mathbf{v}}$ is given by $A\mathbf{v} = [\mathbf{u}_{i}^{\top} \mathbf{v}]_{i=1}^{2} = \mathbf{0}$. This implies that both row vectors $\mathbf{u}_{1}, \mathbf{u}_{2} \in \mathbb{R}^{m}$ must be orthogonal to $\mathbf{v} \in \mathbb{R}^{m}$, i.e. lie in its hyperplane $H \subseteq \mathbb{R}^{m}$.


Thus, $\dim(S^{\mathbf{v}}) = 2(m-1)$.
$\square$
