
For a matrix $A \in \mathbb{K}^{m\times n}$, the **eigenvalues** are the [[scalar multiplication|scalars]] associated with the [[eigenvectors]] of that linear transformation. Formally, they are the roots of the [[characteristic polynomial]], i.e. all $\lambda \in \mathbb{K}$ with $\det (A - \lambda I_{n}) = 0$.

Alternatively, the eigenvalue of some vector (an [[eigenvector]]) is the scalar such that $A\mathbf{v} = \lambda \mathbf{v}$ holds, meaning the vector doesn't "change direction" but is only scaled.

Eigenvalues have [[algebraic multiplicity]] and [[geometric multiplicity]], such that the following inequality holds.
$$
1 \leq \gamma_{A}(\lambda) \leq \mu_{A}(\lambda) \leq n
$$

Let $T_{A} : \mathbb{K}^{n} \to \mathbb{K}^{m}$ be the linear transformation described by $A$. Then the set $\sigma_{A} = \{ \lambda_{j} \in \mathbb{K} \mid \chi_{A}(\lambda_{j}) = 0 \}$, called the spectrum of $A$ denotes all of its eigenvalues and $E_{A}(\lambda_{j}) = \mathrm{N}(A - \lambda_{j} I_{n})$ denotes the set of all eigenvectors (and the zero vector) corresponding to that eigenvalue and is called eigenspace or characteristic space.
The set of all eigenvalue eigenvector 2-tuples is called the eigensystem, given by $\bigcup_{\lambda_{j} \in \sigma_{A}} \big(\{ \lambda_{j} \} \times (E_{A}(\lambda_{j}) - \{ \mathbf{0} \}) \big)$.
Finally, if the eigenvectors form a basis of the domain, it's called an eigenbasis.
