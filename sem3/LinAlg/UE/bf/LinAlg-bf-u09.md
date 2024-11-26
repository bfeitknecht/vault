

# 2     Preserving Inner Products ![[LinAlg-e-u09.pdf#page=1&rect=79,208,515,238|LinAlg-e-u09, p.1]]

To prove is the following implication.
$$
(Q\mathbf{v})^{\top}(Q\mathbf{w}) = \mathbf{v}^{\top}\mathbf{w} \implies Q^{\top} = Q^{-1}
$$
Assume the LHS of the implication for arbitrary vectors $\mathbf{v}, \mathbf{w} \in \mathbb{R}^{m}$ and square matrix $Q \in \mathbb{R}^{m \times m}$. Then rewrite $(Q\mathbf{v})^{\top}(Q\mathbf{w})$ as $\mathbf{v}^{\top}Q^{\top}Q\mathbf{w}$, by definition of transpose and per associativity. Now we have $\mathbf{v}^{\top}Q^{\top}Q\mathbf{w} =\mathbf{v}^{\top}\mathbf{w}$. This implies that the innermost inner product must be equal to the identity matrix $Q^{\top}Q = I_{m}$. It follows that $Q^{\top} = Q^{-1}$, the definition of an orthogonal matrix. Thus we have proven the statement above.
$\square$
