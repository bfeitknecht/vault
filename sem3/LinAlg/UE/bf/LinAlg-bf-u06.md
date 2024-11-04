
# 2 ![[LinAlg-e-u06.pdf#page=1&rect=79,197,516,258|LinAlg-e-u06, p.1]]
To arrive at the dimension of $S^{\mathbf{v}}$, we will show that it is a hyperplane of the vector space $V = \mathbb{R}^{2 \times m}$, per lemma 4.5.

From the previous exercise we know the following.
> $1a)$ hyperplane $H$ is a subspace of $V$
> $1b)$ dimension of hyperplane $H$ is $\dim(V)-1$

Furthermore, we can visualize a matrix $A \in \mathbb{R}^{2 \times m}$ as given below.
$$
A = \begin{bmatrix}
\mid & \dots & \mid \\
\mathbf{a}_{1} & \dots & \mathbf{a}_{m} \\
\mid & \dots & \mid
\end{bmatrix}
= \begin{bmatrix}
a_{1,1} & \dots & a_{1,m} \\
a_{2,1} & \dots & a_{2,m}
\end{bmatrix}
$$

We can define the linear transformation in the condition of the set $S^{\mathbf{v}}$ with $\sum_{i=1}^{m} v_{j} \mathbf{a}_{j} = \mathbf{0}$, where $\mathbf{a}_{j} \in \mathbb{R}^{2}$ is the $j$-th column vector of $A$ and $v_{j}$ is the $j$-th entry of $\mathbf{v} \neq \mathbf{0}$.


Then, we need to prove that $S^{\mathbf{v}}$ is a hyperplane, for an arbitrary non-zero vector $\mathbf{v} \in V$.


Thus, $\dim(S^{\mathbf{v}}) = 2m-1$.
$\square$




S\^v is the set of all linear transformations that map any vector to the two dimensional zero vector
