

# 2.
![[LinAlg-e-u03.pdf#page=1&rect=79,69,477,326|LinAlg-e-u03, p.1]]We denote $\mathbf{x}' \in \mathbb{R}^{n+1}$ as the modified argument vector, i.e. $\mathbf{x}'=\begin{bmatrix} x_{1} \\ \vdots \\ x_{n} \\ 1 \end{bmatrix}$ for all $\mathbf{x}=\begin{bmatrix} x_{1} \\ \vdots \\ x_{n} \end{bmatrix}\in \mathbb{R}^{n}$.

Using the definition (def. 2.4) of matrix-vector multiplication, we can also write the function $T$ as a linear combination of column vectors in $A$, i.e. $T(\mathbf{x}) = \left( \sum_{j=1}^{n}x_{j}\mathbf{v}_{j} \right)+\mathbf{v}_{n+1}$, since $x'_{n+1}=1$, which is the multiplicative identity.

<div class="page-break" style="page-break-before: always;"></div>

We will prove that $T: \mathbb{R}^{n} \to \mathbb{R}^{m}$ is a linear transformation if and only if $\mathbf{v}_{n+1}=\mathbf{0}$, by showing that the implication is true for both "directions".

To begin, let's consider the **if** direction, i.e. the statement "*if the $(n+1)$-th column vector of $A$ is the zero vector, then $T$ is a linear transformation*".

To prove that $T$ is a linear transformation, we need to show that it's closed under vector addition and scalar multiplication. To do this, we will show that $T(\mathbf{x} + \mathbf{y})= T(\mathbf{x})+ T(\mathbf{y})$ and $T(\lambda\mathbf{x}) =\lambda T(\mathbf{x})$ hold for arbitrary vectors $\mathbf{x}, \mathbf{y} \in \mathbb{R}^{n}$ and some scalar $\lambda \in \mathbb{R}$.

First, we'll cover linearity, i.e., $T(\mathbf{x} + \mathbf{y})= T(\mathbf{x})+ T(\mathbf{y})$.
$$
\begin{align}
T(\mathbf{x} + \mathbf{y}) &= A \begin{bmatrix}
x_{1} + y_{1} \\
\vdots \\
x_{n} + y_{n} \\
1
\end{bmatrix}  &\text{(def. $T$)} \\
&= \sum_{j=1}^{n}(x_{j}+y_{j})\mathbf{v}_{j} &\text{(comm. scalar multiplication)} \\
&= \sum_{j=1}^{n}x_{j}\mathbf{v}_{j} + \sum_{j=1}^{n}y_{j}\mathbf{v}_{j} &\text{(def. $T$)} \\
&= A \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix} + A \begin{bmatrix}
y_{1} \\
\vdots \\
y_{n} \\
1
\end{bmatrix} = T(\mathbf{x}) + T(\mathbf{y}) &\square
\end{align}
$$

Since $T(\mathbf{x}+\mathbf{y})=T(\mathbf{x})+T(\mathbf{y})$, linearity is proven.


Let's now prove homogeneity, i.e. $T(\lambda\mathbf{x}) =\lambda T(\mathbf{x})$. Let $\lambda \in \mathbb{R}$ be some arbitrary scalar.
$$
\begin{align}
T(\lambda \mathbf{x}) &= A \lambda \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix} = A \begin{bmatrix}
\lambda x_{1} \\
\vdots \\
\lambda x_{n} \\
\lambda
\end{bmatrix} &\text{(def. scalar multiplication, def. $T$)} \\
&= \sum_{j=1}^{n}\lambda x_{j}\mathbf{v}_{j} &\text{(comm. scalar multiplication)} \\
&= λ \sum_{j=1}^{n}x_{j}\mathbf{v}_{j} &\text{(def. $T$)} \\
&= \lambda A \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix} = \lambda T(\mathbf{x}) &\square
\end{align}
$$

Since, the function $T$ preserves vector addition and scalar multiplication if $\mathbf{v}_{n+1}=\mathbf{0}$, it is a linear transformation. Thus the first direction of the implication is proven.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

Now we'll cover the other direction of the implication, namely the **only if**, i.e. "*if $T$ is a linear transformation, then the $(n+1)$-th column vector of $A$ is the zero vector*".

We prove this by contradiction. Let's assume that $T$ is a linear transformation and the last column vector is an arbitrary non-zero vector, i.e. $\mathbf{v}_{n+1} \neq \mathbf{0}$.

Let's evaluate the function at the zero vector.
$$
\begin{align}
T(\mathbf{0}) &= \mathbf{v}_{n+1} &\contradiction
\end{align}
$$
We have arrived at a contradiction, since 






linear map from n dimensions to m dimensions, where $\mathbf{v}_{i \in[n]}$ is the $i$-th base vector from $\mathbb R^n$ after the linear transformation in $\mathbb{R}^m$
