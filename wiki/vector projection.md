
The **vector projection** of some [[vector]] $b \in V$ onto some [[vector subspace]] $S \subseteq V$ is defined as below, intuitively "the closest" vector to $b$. Notably, for any such vector it holds that $b = p + e$, where $e \in S^{\bot}$, i.e. we can write it as the sum of the projection and some error vector.
$$
\proj_{S}(v) = \argmin_{p \in S} \| v - p \|
$$

Let $a \in \mathbb{K}^{m} - \{ 0 \}$ and $S = \span(a)$ be the line spanned by it. Then the projection of $b \in \mathbb{K}^{m}$ is given by the following.
$$
\proj_{S}(b) = \overbrace{ \frac{a a^\mathsf{T}}{a^\mathsf{T} a} }^{ P } b = \frac{a^\mathsf{T} b}{a^\mathsf{T} a} a
$$

For the general case, let $A \in \Mat_{m \times n}(\mathbb{K})$ be [[full rank]] and $S = \mathrm{C}(A)$. Then the projection is given by the [[matrix-vector multiplication]] satisfying the normal equations, $A^\mathsf{T} A \widehat{x} = A^\mathsf{T} b$. Solving for $A\widehat{x} = A(A^\mathsf{T}A)^{-1} A^\mathsf{T} b = Pb$, yields the [[projection matrix]], $P$. This works since $A$ is full rank, meaning it has linearly independent columns from which follows that $A^\mathsf{T} A$ has an [[inverse (matrix)]].
$$
\proj_{S}(b) = A \widehat{x} = Pb
$$

