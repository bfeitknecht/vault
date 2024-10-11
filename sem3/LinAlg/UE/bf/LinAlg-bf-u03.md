

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


To begin, let's consider the *if* direction, i.e. the statement "if the $(n+1)$-th column vector of $A$ is the zero vector, then $T$ is a linear transformation".

...

Now we'll cover the other direction of the implication, namely the *only if*, i.e. "if $T$ is a linear transformation, then the $(n+1)$-th column vector of $A$ is the zero vector".

...

use axioms of linear transformation









linear map from n dimensions to m dimensions, where $\mathrm{v}_{i \in[n]}$ is the $i$-th base vector from $\mathbb R^n$ after the linear transformation in $\mathbb{R}^m$
