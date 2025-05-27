
# 2 ![[LinAlg-e-u06.pdf#page=1&rect=79,197,516,258|LinAlg-e-u06, p.1]]
From the previous exercise we know the following.
> $1a$      hyperplane $H$ is a subspace of $V$
> $1b$      dimension of hyperplane $H$ is $\dim(V)-1$

Furthermore, we can visualize a given matrix $A \in \mathbb{R}^{2 \times m}$ as illustrated below.
$$
A = \begin{bmatrix}
\ \textemdash &\mathbf{u}_{1} &\textemdash\ \\
\ \textemdash &\mathbf{u}_{2} &\textemdash\ \\
\end{bmatrix}
$$

Then the set condition $A\mathbf{v}=\mathbf{0}$ in $S^{\mathbf{v}}$ can be rewritten as $[\mathbf{u}_{i}^{\mathsf{T}} \mathbf{v}]_{i=1}^{2} = \mathbf{0}$,  where $\mathbf{v} \in \mathbb{R}^{m}$ denotes an arbitrary fixed, non-zero vector, i.e. $\mathbf{v} \neq \mathbf{0}$.

This implies that both row vectors of $A$, namely $\mathbf{u}_{1}, \mathbf{u}_{2} \in \mathbb{R}^{m}$ must be orthogonal to $\mathbf{v}$, i.e. lie in the hyperplane $H = \{ \mathbf{w} \in \mathbb{R}^{m} : \mathbf{w}^{\mathsf{T}}\mathbf{v}=0 \} \subseteq \mathbb{R}^{m}$ induced by it.

Per $1a, 1b$ we know that the dimension of a hyperplane that is vector subspace of a vector space $V$ is $\dim(V) -1$. Since $\dim(\mathbb{R}^{m})=m$, we have $\dim(H) = m-1$.

Hence, any two row vectors $\mathbf{u}_{1}, \mathbf{u}_{2} \in H$ form a basis for $A$ such that $A\mathbf{v}=\mathbf{0}$. Then, the dimension of $S^{\mathbf{v}}$ is the number of row vectors in $A$ times the dimension of their vector space. Thus, $\dim(S^{\mathbf{v}}) = 2(m-1)$.
$\square$
