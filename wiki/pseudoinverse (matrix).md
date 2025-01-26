
The **pseudoinverse** of a matrix $A \in \Mat_{m \times n}(\mathbb{K})$ is defines as a matrix $A^{+}$ that is "almost" an inverse, in the sense that it fulfills the following criteria.
1. $A A^{+}A = A$
2. $A^{+}AA^{+} = A^{+}$
3. $AA^{+}$ is symmetric and the [[projection matrix]] on $\mathrm{C}(A)$
4. $A^{+}A$ is symmetric and the projection matrix on $\mathrm{C}(A^\mathsf{T})$
5. $(A^\mathsf{T})^{+} = (A^{+})^\mathsf{T}$

When the matrix $A$ is [[full rank]], i.e. it it has [[linear independence]] of [[row and column vectors]], then the following holds. For the first case, $A^{+} = (A^{\mathsf{H}}A)^{-1} A^{\mathsf{H}}$ and for the second $A^{+} = A^{\mathsf{H}} (A A^{\mathsf{H}})^{-1}$.
- If $\rank(A) = n$, then $A$ is an [[injection]] and thus $A^{\mathsf{H}}A$ invertible, the pseudoinverse is a left-inverse $A^{+}A = I_{m}$.
- If $\rank(A) = m$, then $A$ is a [[surjection]], hence $AA^{\mathsf{H}}$ is invertible and the pseudoinverse is right-inverse $AA^{+} = I_{n}$.
