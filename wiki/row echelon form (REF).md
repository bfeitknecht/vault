![[ref.png|300]]
A [[matrix]] is in **row echelon form (REF)** if it can be obtained as a result from [[gauss elimination]]. Every matrix can be put into REF by applying a sequence of elementary row operations. A leading entry or **pivot** is the leftmost, non-zero element $r_{ij}$ in a row.

Let $R=[r_{ij}]_{m, n} \in \mathbb{K}^{m \times n}$. Then $R$ is in *row echelon form* if the following holds.
1. Zero rows are at the bottom
2. For some pivot $r_{ij}$ it holds that all pivots $r_{i'j'}$ below it are right of it, $i < i' \implies j < j'$

