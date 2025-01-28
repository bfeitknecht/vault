
![[five-matrix-decompositions.pdf#page=1&rect=164,12,258,476|five-matrix-decompositions, p.1|300]]

The **LU decomposition** for a matrix $A \in \mathbb{K}^{m \times n}$ factors it into the product of two [[triangular matrix|triangular matrices]], where the upper triangular $U = \mathrm{REF}(A)$ is achieved through [[gauss elimination (algorithm)]] and the lower triangular is $L = I + [c_{i, j}]_{i > j}$, with $c_{i, j}$ being the multiple of row $j$ that was subtracted from row $i$ during the computation of $U$, i.e. $\mathbf{u}_{i} \leftarrow \mathbf{u}_{i} - c_{i, j} \mathbf{u}_{j}$ and $c_{i, j} = \frac{a_{i,j}}{a_{j,j}}$.

In $L$ all elements above the diagonal are zero and in $U$ all elements below the diagonal are zero.