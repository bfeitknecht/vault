

- farka's lemma
- [[polyhedron]]
- projection
- pseudo-inverse matrix
- hermitian matrix (conjugate transpose)
- determinant


# Notes

- partial order on vectors is defined component wise, $\mathbf{v} \leq \mathbf{w} \iff v_{j} \leq w_{j}$

- null space of a matrix is the orthogonal complementary space of its row space, $\mathcal{N}(A) = \mathcal{C}(A^{\mathsf{T}})^{\bot}$
- left null space is orthogonal complementary space of column space, $\mathcal{N}(A^{\mathsf{T}}) = \mathcal{C}(A)^{\bot}$


- $Q^{\mathsf{T}}Q = I$ but $QQ^{\mathsf{T}} \neq I$ since $Q$ might not be square matrix!


**Pseudoinverse**
$A^{+}$ is pseudoinverse of matrix $A$ and approximates the inverse of the linear transformation described by $A$ $T_{A^{+}} : \mathcal{C}(A) \oplus \mathcal{N}(A^{\mathsf{T}}) \to \mathcal{C}(A^{\mathsf{T}})$

If matrix $A$ is square and full rank, the pseudoinverse is the inverse


**CR decomposition**
$\overbracket{ A }^{ m\times n } = \underbracket{ C }_{ m\times h } \overbracket{ R }^{ h \times n }$, where $\mathrm{rank}(A) = h$

**LU decomposition**
$A = \overbracket{ L }^{ m \times m } \underbracket{ U }_{ m \times n }$


**Determinant Properties**
Some $n \times n$ matrix $A$ is invertible if and only if $\det(A) \neq 0$
For an orthogonal square matrix $Q$, it holds that $\det(Q) = \pm 1$



- diagonal matrix forms orthonormal basis
