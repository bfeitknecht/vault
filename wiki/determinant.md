
The **determinant** of a matrix $M \in \mathrm{Mat}_{n}(\mathbb{K})$ is a function $\det : \mathrm{Mat}_{n}(\mathbb{K}) \to \mathbb{K}$. Intuitively, it measures the change in volume to the unit hypercube. If it's negative that means the transformation "flips" the space. If it's zero, dimensionality is lost. It's only defined for square matrices.

Formally, the determinant of such a matrix $M$ is given as the sum of the product between the sign with the product over the permuted columns. It can also be computed using the [[laplace expansion]].
$$
\det(M) = \sum_{\sigma \in S_{n}} \mathrm{sgn}(\sigma) \prod_{i=1}^{n} A_{i, \sigma(i)}
$$

The determinant of respects the [[transpose]], $\det(M) = \det(M^\mathsf{T})$. Additionally, it also respects matrix multiplication, $\det(AB) = \det(A) \det(B)$. For a triangular matrix $T$, the determinant is simply the product of the main diagonal, $\det(T) = \prod_{i \in [n]} T_{i, i}$. For an [[orthogonal matrix]] $Q$ the determinant is $\det(Q) = \pm 1$.

