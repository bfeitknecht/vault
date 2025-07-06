
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

## 1.   Linear Regression
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

- $\mathbf{C}(A^{\mathsf{T}}) = \mathbf{C}(A^{\mathsf{T}}A)$
- $\mathbf{N}(A^{\mathsf{T}}) = \mathbf{N}(A^{\mathsf{T}}A)$

- $M \in \mathbb{F}^{m \times n}: \mathrm{rank}(M)=n$ i.e. $M$ is full rank $\implies$ $M^{\mathsf{T}}M$ full rank, hence $M$ invertible

- skinny tall matrix $\implies$ overdetermined LSE
- *orthogonal* matrix preserves euclidian norm and scalar product
- $(Q\mathbf{x})^{\mathsf{T}}(Q\mathbf{y}) = \mathbf{x}^{\mathsf{T}}\mathbf{y} \implies$ angle between $\mathbf{x},\mathbf{y}$ is preserved by $Q$, we just (stretch) rotate the space

- projection matrix where $Q$ forms an orthogonal basis for a subspace $S \subseteq V$ we have $P=QQ^{\mathsf{T}}$ (?)



Proof.
1. $(Q\mathbf{x})^{\mathsf{T}}(Q\mathbf{y}) = \mathbf{x}^{\mathsf{T}}\overbrace{ \cancel{ Q^{\mathsf{T}}Q } }^{ I }\mathbf{y} = \mathbf{x}^{\mathsf{T}}\mathbf{y}$
2. $\|Q\mathbf{x}\|^{2} = (Q\mathbf{x})^{\mathsf{T}}(Q\mathbf{x}) = \mathbf{x}^{\mathsf{T}}\overbrace{ \cancel{ Q^{\mathsf{T}}Q } }^{ I }\mathbf{x} = \mathbf{x}^{\mathsf{T}}\mathbf{x}=\|\mathbf{x}\|^{2}$




normal equation
$A^{\mathsf{T}}A \widehat{\mathbf{x}} = A^{\mathsf{T}}b$


for any matrix, the vector that minimizes the error satisfies the normal equation
