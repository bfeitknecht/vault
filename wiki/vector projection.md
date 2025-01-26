
The **vector projection** of some [[vector]] $\mathbf{v} \in V$ onto some [[vector subspace]] $S \subseteq V$ is defined as below, intuitively "the closest" vector to $\mathbf{v}$.
$$
\proj_{S}(\mathbf{v}) = \underset{ \mathbf{p} \in S }{ \argmin } \| \mathbf{v} - \mathbf{p} \|
$$

Let $\mathbf{a} \in \mathbb{K}^{m} - \{ \mathbf{0} \}$ and $L = \mathrm{C}(\mathbf{a})$ be the line spanned by it. Then the projection of $\mathbf{b} \in \mathbb{K}^{m}$ is given by the following, where $P$ is the [[projection matrix]].
$$
\proj_{L}(\mathbf{b}) = \frac{1}{\mathbf{a}^\mathsf{T}\mathbf{a}} \overbracket{ \mathbf{a}\mathbf{a}^\mathsf{T}\mathbf{b} }^{ P\mathbf{b} } =\frac{\mathbf{a}^\mathsf{T} \mathbf{b}}{\mathbf{a}^\mathsf{T} \mathbf{a}} \mathbf{a}
$$

For the general case, let $A \in \Mat_{m \times n}(\mathbb{K})$