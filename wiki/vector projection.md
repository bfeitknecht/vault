
The **vector projection** of some [[vector]] $v \in V$ onto some [[vector subspace]] $S \subseteq V$ is defined as below, intuitively "the closest" vector to $v$.
$$
\proj_{S}(v) = \underset{ p \in S }{ \argmin } \| v - p \|
$$

Let $a \in \mathbb{K}^{m} - \{ 0 \}$ and $L = \span(a)$ be the line spanned by it. Then the projection of $b \in \mathbb{K}^{m}$ is given by the following, where $P$ is the [[projection matrix]].
$$
\proj_{L}(b) = \frac{1}{a^\mathsf{T}a} \overbracket{ aa^\mathsf{T} }^{ P } b =\frac{a^\mathsf{T} b}{a^\mathsf{T} a} a
$$

For the general case, let $A \in \Mat_{m \times n}(\mathbb{K})$ be full rank and $S = \mathrm{C}(A)$. Then the projection is given by the [[matrix-vector multiplication]] satisfiying the normal equations, $A^\mathsf{T} A \widehat{x} = A^\mathsf{T} b$.
$$
\proj_{S}(b) = A \widehat{x}
$$




