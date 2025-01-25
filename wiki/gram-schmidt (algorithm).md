
The **gram-schmidt** algorithm allows the transformation of a [[basis (vector space)]] $B = \{ \mathbf{v}_{i} \}_{n}$ to an [[orthonormal basis]] $Q = \{ \mathbf{q}_{i} \}_{n}$. It does this by iteratively projecting onto the span of thus far orthonormalized basis vectors and then normalizing. The correctness can be proven by induction on the dimension of the basis, $n = |B|$.

1. **initialize**: normalize the first vector $\mathbf{v}_{1} \in B$
	$\mathbf{q}_{1} = \frac{1}{\| \mathbf{v}_{1} \|} \mathbf{v}_{1}$

2. **iterate**: `for k in 2 .. n`
	- **orthogonalize**: subtract the projection of the $k$-th vector $\mathbf{v}_{k} \in B$ onto the span of $Q_{k}$
		$\mathbf{p}_{k} = \mathbf{v}_{k} - \sum_{i = 1}^{k-1} (\mathbf{v}_{k}^{\top} \mathbf{q}_{i}) \cdot \mathbf{q}_{i}$
	- **normalize**: scale by reciprocal of norm
		$\mathbf{q}_{k} = \frac{1}{\| \mathbf{p}_{k} \|} \mathbf{p}_{k}$
