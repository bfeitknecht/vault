

# 2     Preserving Inner Products ![[LinAlg-e-u09.pdf#page=1&rect=79,208,515,238|LinAlg-e-u09, p.1]]

To prove is the following implication.
$$
(Q\mathbf{v})^{\top}(Q\mathbf{w}) = \mathbf{v}^{\top}\mathbf{w} \implies Q^{\top} = Q^{-1}
$$
Assume the LHS of the implication. Then rewrite $(Q\mathbf{v})^{\top}(Q\mathbf{w})$ as $\mathbf{v}^{\top}Q^{\top}Q\mathbf{w}$, by definition of transpose. Now we have$\mathbf{v}^{\top}Q^{\top}Q\mathbf{w} =\mathbf{v}^{\top}\mathbf{w}$. This implies that $Q^{\top}Q = I$, which furthermore implies $Q^{\top} = Q^{-1}$. Thus we have proven the statement above.
$\square$
