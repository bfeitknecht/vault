
![[five-matrix-decompositions.pdf#page=1&rect=164,12,258,476|five-matrix-decompositions, p.1|300]]

The **LU decomposition** for a matrix $A \in \mathbb{K}^{m \times n}$ factors it into the product of two [[triangular matrix|triangular matrices]], where the upper triangular $U = \mathrm{REF}(A)$ is achieved through [[gauss elimination]] and the lower triangular is $L = I + [c_{ij}]_{i > j}$, with $c_{ij}$ being the multiple of row $R_{j}$ that was subtracted from row $R_{i}$ during the computation of $U$.

In $L$ all elements above the diagonal are zero and in $U$ all elements below the diagonal are zero.
