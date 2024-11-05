
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

Then the set condition for $A$ in $S^{\mathbf{v}}$ can be rewritten as $A\mathbf{v} = [\mathbf{u}_{i}^{\top} \mathbf{v}]_{i=1}^{2} = \mathbf{0}$, where $\mathbf{v} \in \mathbb{R}^{m}$ denotes an arbitrary fixed, non-zero vector, i.e. $\mathbf{v} \neq \mathbf{0}$. This implies that both row vectors of $A$, namely $\mathbf{u}_{1}, \mathbf{u}_{2} \in \mathbb{R}^{m}$ must be orthogonal to $\mathbf{v}$, i.e. lie in the hyperplane $H = \{ \mathbf{w} \in \mathbb{R}^{m} : \mathbf{w}^{\top}\mathbf{v}=0 \} \subseteq \mathbb{R}^{m}$ induced by it.




#todo argue about dimension of basis A with u1, u2 as being the hyperplane induced by v



Per $1a$ we know that the dimension of a hyperplane that is vector subspace of a vector space $V$ is $\dim(V) -1$. Since $\dim(\mathbb{R}^{m})=m$, we have $\dim(H) = m-1$. Then, per definition of $S^{\mathbf{v}}$, its dimension is given by the dimension of the span of the two row vectors of $A$, i.e. $\mathbf{u}_{1}, \mathbf{u}_{2} \in H$. This is simply twice the dimension of $H$.

Thus, $\dim(S^{\mathbf{v}}) = 2(m-1)$.
$\square$
