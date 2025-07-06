
The **inner product** (or *dot product*, *scalar product* – not to be confused with [[scalar multiplication]]) of two $m$-dimensional [[vector|vectors]] $\mathbf{u}, \mathbf{v}$ is defined as below and can alternatively be denoted with $\langle \mathbf{u}, \mathbf{v} \rangle$ or $\mathbf{u} \cdot \mathbf{v}$. Notice that $\mathbf{u}^{\mathsf{T}}$ is the [[transpose]] of the vector $\mathbf{u}$ and we compute the resulting [[matrix-matrix multiplication]]. It exhibits [[commutativity]], that is $\mathbf{u}^{\mathsf{T}} \mathbf{v}=\mathbf{v}^{\mathsf{T}} \mathbf{u}$.
$$
\mathbf{u}^{\mathsf{T}} \mathbf{v} = \sum_{i=1}^{m}{u_{i}v_{i}} =
\begin{bmatrix}
v_{1}, \dots, v_{m} \\

\end{bmatrix}
\cdot
\begin{bmatrix}
w_{1}, \\
\vdots \\
w_{m}
\end{bmatrix}
$$


# Geometric definition

In [[euclidian space]], the dot product of two vectors $\mathbf{u}$ and $\mathbf{v}$ is defined by $\mathbf{u} \cdot \mathbf{v} = \|\mathbf{u}\| \ \|\mathbf{v}\| \cos\theta$, where $\theta$ is the angle between them.

In particular, if the vectors are [[orthogonal]] (i.e., their [[angle]] is $\frac{\pi}{2} =90^\circ$), then $\cos \frac{\pi}{2}=0$, which implies that $\mathbf{u}\cdot \mathbf{v} =0$

If they are [[codirectional]] then the angle between them is zero with $\cos 0=1$ and $\mathbf{u}\cdot \mathbf{v}=\|\mathbf{u}\| \ \|\mathbf{v}\|$.

This implies that the dot product of a vector $\mathbf{u}$ with itself is $\mathbf{u}\cdot \mathbf{u}=\|\mathbf{u}\|^2$ which gives the formula $\|\mathbf{u}\|=\sqrt{ \mathbf{u}\cdot \mathbf{u} }$ for the [[euclidian norm]].
