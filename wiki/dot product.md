

The **dot product** (or *scalar product* – not to be confused with [[scalar multiplication]]) of two [[vector|vectors]] $\mathbf{v}, \mathbf{w} \in \R^m$ is defined as
$$
\mathbf{v} \cdot \mathbf{w} \def \sum_{i=1}^{m}{v_{i}w_{i}}
$$
and can be denoted with $\langle \mathbf{v}, \mathbf{w} \rangle$ or $\mathbf{v} \cdot \mathbf{w}$.

If $\mathbf{v}$ and $\mathbf{w}$ are [[row and column vectors|column vectors]], the dot product can also be denoted as $\mathbf{v} \cdot \mathbf{w} =\mathbf{v}^\top \mathbf{w}$, where $\mathbf{v}^\top$ denotes the [[transpose]] of $\mathbf{v}$.
$$
\begin{align}
\mathbf{v} \cdot \mathbf{w} &=
\begin{bmatrix}
v_{1}, \dots, v_{m} \\

\end{bmatrix}
\cdot
\begin{bmatrix}
w_{1}, \\
\vdots \\
w_{m}
\end{bmatrix}
\end{align}
$$


# Geometric definition

In [[euclidian space]], the dot product of two vectors $\mathbf{v}$ and $\mathbf{w}$ is defined by $\mathbf{v} \cdot \mathbf{w} = \|\mathbf{v}\| \ \|\mathbf{w}\| \cos\theta$, where $\theta$ is the angle between them.

In particular, if the vectors are [[orthogonal]] (i.e., their [[angle]] is $\frac{\pi}{2} =90^\circ$), then $\cos \frac{\pi}{2}=0$, which implies that $\mathbf{v}\cdot \mathbf{w} =0$

On the other extreme, if they are [[codirectional]] then the angle between them is zero with $\cos 0=1$ and $\mathbf{v}\cdot \mathbf{w}=\|\mathbf{v}\| \ \|\mathbf{w}\|$. 

This implies that the dot product of a vector $\mathbf{v}$ with itself is $\mathbf{v}\cdot \mathbf{v}=\|\mathbf{v}\|^2$ which gives $\|\mathbf{v}\|=\sqrt{ \mathbf{v}\cdot \mathbf{v} }$ the formula for the [[euclidian norm]].


