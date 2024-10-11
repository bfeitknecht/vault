

# 2.
![[LinAlg-e-u03.pdf#page=1&rect=79,69,477,326|LinAlg-e-u03, p.1]]


It's noted that $A$ can also be written in row vector form, for $\mathrm{u}_{j \in [m]} \in \mathbb{R}^{n+1}$.
$$
A = \begin{bmatrix}
\ \textemdash &\mathbf{u}_{1} &\textemdash\ \\
\ \textemdash &\mathbf{u}_{2} &\textemdash\ \\
&\vdots \\
\ \textemdash &\mathbf{u}_{m} &\textemdash\
\end{bmatrix}
$$

Using the definition (def. 2.4) of matrix-vector multiplication, we can also write the function as a linear combination of column vectors in $A$, i.e. $T(\mathrm{x}) = \left( \sum_{j=1}^{n}x_{j}\mathrm{v}_{j} \right)+\mathrm{v}_{n+1}$.
Alternatively, we can also write it as a vector of scalar products between the row vectors and the modified argument.

Thus, $T(\mathrm{x}) =[\mathrm{u}_{j} \cdot \mathrm{x}]_{m}$ 


<div class="page-break" style="page-break-before: always;"></div>

We will prove that $T: \mathbb{R}^{n} \to \mathbb{R}^{m}$ is a linear transformation if and only if $\mathrm{v}_{n+1}=\mathbf{0}$, by showing that the implication is true for both "directions".

To begin, let's consider the **if** direction, i.e. the statement "*if the $(n+1)$-th column vector of $A$ is the zero vector, then $T$ is a linear transformation*".

To prove that $T$ is a linear transformation, we need to show that it's closed under vector addition and scalar multiplication. To do this, we will show that $T(\mathrm{x} + \mathrm{y})= T(\mathrm{x})+ T(\mathrm{y})$ and $T(\lambda\mathrm{x}) =\lambda T(\mathrm{x})$ hold for arbitrary vectors $\mathrm{x}, \mathrm{y} \in \mathbb{R}^{n}$ and some scalar $\lambda \in \mathbb{R}$.

First, we'll cover linearity, i.e., $T(\mathrm{x} + \mathrm{y})= T(\mathrm{x})+ T(\mathrm{y})$. Let $\mathrm{z} = \mathrm{x} + \mathrm{y} \in \mathbb{R}^{n}$ be the result of vector addition for two arbitrary vectors. 

To start out, let's cover $T(\mathrm{z})$.
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

<div class="page-break" style="page-break-before: always;"></div>

Now let's evaluate $T(\mathrm{x})+T(\mathrm{y})$.
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

<div class="page-break" style="page-break-before: always;"></div>

Let's now prove homogeneity, i.e. $T(\lambda\mathrm{x}) =\lambda T(\mathrm{x})$. Let $\lambda \in \mathbb{R}$ be some scalar.
$$
\begin{align}
T(\lambda \mathrm{x}) &= A \lambda \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix} = A \begin{bmatrix}
\lambda x_{1} \\
\vdots \\
\lambda x_{n} \\
\lambda
\end{bmatrix} &\text{(def. scalar multiplication, def. $T$)} \\ \\
&= \begin{bmatrix}
\lambda x_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
\lambda x_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
0
\end{bmatrix} = \lambda \begin{bmatrix}
x_{1} \cdot \sum_{v \in \mathrm{v}_{1}} v \\
\vdots \\
x_{n} \cdot \sum_{v \in \mathrm{v}_{n}} v \\
0
\end{bmatrix} &\text{(def. scalar multiplication, def. $T$)} \\ \\
&= \lambda A \begin{bmatrix}
x_{1} \\
\vdots \\
x_{n} \\
1
\end{bmatrix} = \lambda T(\mathrm{x})
\end{align}
$$

Since, the function $T$ preserves vector addition and scalar multiplication if $\mathrm{v}_{n+1}=\mathbf{0}$, it is a linear transformation. Thus the first direction of the implication is proven.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

Now we'll cover the other direction of the implication, namely the **only if**, i.e. "*if $T$ is a linear transformation, then the $(n+1)$-th column vector of $A$ is the zero vector*".

Contradiction?

If the last column vector is the zero, it is a trivial linear combination of any vector $\mathrm{w} \in \mathbb{R}^{m}$. Thus, we note that the rank of the matrix $A$ is at most $n$, i.e. $\mathrm{rank}(A) \leq n$.






linear map from n dimensions to m dimensions, where $\mathrm{v}_{i \in[n]}$ is the $i$-th base vector from $\mathbb R^n$ after the linear transformation in $\mathbb{R}^m$
