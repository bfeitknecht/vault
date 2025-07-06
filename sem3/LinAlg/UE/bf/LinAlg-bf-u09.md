

# 2     Preserving Inner Products ![[LinAlg-e-u09.pdf#page=1&rect=79,208,515,238|LinAlg-e-u09, p.1]]

To prove is the following implication.
$$
(Q\mathbf{v})^{\mathsf{T}}(Q\mathbf{w}) = \mathbf{v}^{\mathsf{T}}\mathbf{w} \implies Q^{\mathsf{T}} = Q^{-1}
$$
Assume the LHS of the implication for all vectors $\mathbf{v}, \mathbf{w} \in \mathbb{R}^{m}$ and an arbitrary square matrix $Q \in \mathbb{R}^{m \times m}$. Then rewrite $(Q\mathbf{v})^{\mathsf{T}}(Q\mathbf{w})$ as $\mathbf{v}^{\mathsf{T}}Q^{\mathsf{T}}Q\mathbf{w}$, by definition of transpose and per associativity. Now we have $\mathbf{v}^{\mathsf{T}}Q^{\mathsf{T}}Q\mathbf{w} =\mathbf{v}^{\mathsf{T}}\mathbf{w}$. This implies that the innermost inner product must be equal to the $m\times m$ identity matrix, i.e. $Q^{\mathsf{T}}Q = I_{m}$. It follows that $Q^{\mathsf{T}} = Q^{-1}$, the definition of an orthogonal matrix. Thus we have proven the statement above.
$\square$
