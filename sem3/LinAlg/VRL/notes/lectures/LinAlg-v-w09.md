
- orthogonal vectors
- orthonormal vectors
- [[orthonormal basis]]
- orthogonal vector subspace
- complementary vector subspace
- orthogonal complementary vector subspace
- QR decomposition
- graham-schmidt algorithm (?)

# Lecture Plan



# In-Class

## 1.   Linear Regression
$$
\begin{align}
\overbrace{ \alpha_{1} \begin{bmatrix}
1 \\
2 \\
3 \\
4 \\
5
\end{bmatrix} + [\alpha_{0}]_{5} }^{ \text{linear combination} } = 
\begin{bmatrix}
1 & 1 \\
2 & 1 \\
3 & 1 \\
4 & 1 \\
5 & 1
\end{bmatrix} \begin{bmatrix}
\alpha_{1} \\
\alpha_{0}
\end{bmatrix}
\end{align}
$$


# Notes

- $\mathbf{C}(A^{\top}) = \mathbf{C}(A^{\top}A)$
- $\mathbf{N}(A^{\top}) = \mathbf{N}(A^{\top}A)$

- $M \in \mathbb{F}^{m \times n}: \mathrm{rank}(M)=n$ i.e. $M$ is full rank $\implies$ $M^{\top}M$ full rank, hence $M$ invertible

- skinny tall matrix $\implies$ overdetermined LSE
- *orthogonal* matrix preserves euclidian norm and scalar product 
- $(Q\mathbf{x})^{\top}(Q\mathbf{y}) = \mathbf{x}^{\top}\mathbf{y} \implies$ angle between $\mathbf{x},\mathbf{y}$ is preserved by $Q$, we just (stretch) rotate the space

- projection matrix where $Q$ forms an orthogonal basis for a subspace $S \subseteq V$ we have $P=QQ^{\top}$ (?)



Proof.
1. $(Q\mathbf{x})^{\top}(Q\mathbf{y}) = \mathbf{x}^{\top}\overbrace{ \cancel{ Q^{\top}Q } }^{ I }\mathbf{y} = \mathbf{x}^{\top}\mathbf{y}$
2. $\|Q\mathbf{x}\|^{2} = (Q\mathbf{x})^{\top}(Q\mathbf{x}) = \mathbf{x}^{\top}\overbrace{ \cancel{ Q^{\top}Q } }^{ I }\mathbf{x} = \mathbf{x}^{\top}\mathbf{x}=\|\mathbf{x}\|^{2}$




