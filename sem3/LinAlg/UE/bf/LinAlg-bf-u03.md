

# 2.
![[LinAlg-e-u03.pdf#page=1&rect=79,69,477,326|LinAlg-e-u03, p.1]]


Let $A \in \mathbb{R}^{m \times (n+1)}$ be a matrix, arbitrarily defined through its column vectors $\mathrm{v_{i \in [n+1]}} \in \mathbb{R}^m$.
$$
A = \begin{bmatrix}
\mid &\mid & &\mid & \mid  \\
\mathrm{v_{1}} &\mathrm{v_{2}} &\dots &\mathrm{v_{n}} &\mathrm{v_{n+1}}  \\
\mid &\mid & &\mid &\mid
\end{bmatrix}
$$ 
Let $T:\mathbb{R}^{n}\to \mathbb{R}^{m}$ be the function defined by $T(\mathrm{x}) = A \begin{bmatrix} x_{1} \\ \vdots \\  x_{n} \\ 1 \end{bmatrix}$ for all $\mathrm{x}\in \mathbb{R}^{n}$.

We will prove the statement by showing that the implication is true for both "directions".

To begin, let's consider the **if** direction, i.e. the statement "*if the $(n+1)$-th column vector of $A$ is the zero vector, then $T$ is a linear transformation*".

To prove that $T$ is a linear transformation, we need to show that it's closed under vector addition and scalar multiplication. To do this, we will show that $T(\mathrm{x} + \mathrm{y})= T(\mathrm{x})+ T(\mathrm{y})$ and $T(\lambda\mathrm{x}) =\lambda T(\mathrm{x})$ hold for arbitrary vectors $\mathrm{x}, \mathrm{y} \in \mathbb{R}^{n}$ and some scalar $\lambda \in \mathbb{R}$.

First, we'll cover linearity, i.e., $T(\mathrm{x} + \mathrm{y})= T(\mathrm{x})+ T(\mathrm{y})$. Let $\mathrm{z} = \mathrm{x} + \mathrm{y} \in \mathbb{R}^{n}$ be the result of vector addition for two arbitrary vectors. Then we evaluate the function with $\mathrm{z}$ as input. We use the notation $\sum_{v \in \mathrm{v}}v$ to write the sum of all elements $v \in \mathbb{R}$ of some vector $\mathrm{v}$.
$$
\begin{align}
T(\mathrm{z}) &= A \begin{bmatrix}
z_{1} \\
\vdots \\
z_{n} \\
1
\end{bmatrix} 
= \begin{bmatrix}
z_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
z_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
\sum_{v \in \mathrm{v}_{n+1}} v
\end{bmatrix} &\text{(def. matrix-vector product and $\mathrm{v}_{n+1}=\mathbf{0}$)} \\ \\
&= \begin{bmatrix}
z_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
z_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
0
\end{bmatrix}
\end{align}
$$

Now, let's evaluate $T(\mathrm{x})+T(\mathrm{y})$.
$$
\begin{align}
T(\mathrm{x}) + T(\mathrm{y}) &= A \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix}
+ A \begin{bmatrix}
y_{1} \\
\vdots \\
y_{n} \\
1
\end{bmatrix} &\text{(def. matrix-vector product)} \\ \\
&= \begin{bmatrix}
x_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
x_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
\sum_{v \in \mathrm{v}_{n+1}} v
\end{bmatrix}
+ \begin{bmatrix}
y_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
y_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
\sum_{v \in \mathrm{v}_{n+1}} v
\end{bmatrix} &\text{(def. vector addition and $\mathrm{v}_{n+1}=\mathbf{0}$)} \\ \\
&= \begin{bmatrix}
(x_{1} + y_{1}) \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
(x_{n} + y_{n}) \cdot \sum_{v \in \mathrm{v}_{n}} v \\
0
\end{bmatrix} &\text{(def. $\mathrm{z} = \mathrm{x}+\mathrm{y}$)} \\ \\
&= \begin{bmatrix}
z_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
z_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
0
\end{bmatrix}
\end{align}
$$

Since $T(\mathrm{x}+\mathrm{y})=T(\mathrm{x})+T(\mathrm{y})$, linearity is proven.
 
Now let's prove homogeneity, i.e. $T(\lambda\mathrm{x}) =\lambda T(\mathrm{x})$. Let $\lambda \in \mathbb{R}$ be some scalar.








Now we'll cover the other direction of the implication, namely the **only if**, i.e. "*if $T$ is a linear transformation, then the $(n+1)$-th column vector of $A$ is the zero vector*".

Contradiction?

If the last column vector is the zero, it is a trivial linear combination of any vector $\mathrm{w} \in \mathbb{R}^{m}$. Thus, we note that the rank of the matrix $A$ is at most $n$, i.e. $\mathrm{rank}(A) \leq n$.






linear map from n dimensions to m dimensions, where $\mathrm{v}_{i \in[n]}$ is the $i$-th base vector from $\mathbb R^n$ after the linear transformation in $\mathbb{R}^m$
