#todo 

The **dot product** (or *scalar product* – not to be confused with [[scalar multiplication]]) of two [[vector|vectors]] $v, w \in \R^m$ is defined as
$$
v \cdot w \def \sum_{i=1}^{m}{v_{i}w_{i}}
$$
and can be denoted with $\langle v, w \rangle$ or $v \cdot w$.

If $v$ and $w$ are [[row and column vectors|column vectors]], the dot product can also be denoted as $v \cdot w =v^\top w$, where $v^\top$ denotes the [[transpose]] of $v$.
$$
\begin{align}
v \cdot w &=
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

In [[euclidian space]], the dot product of two vectors $v$ and $w$ is defined by $v \cdot w = \|v\| \|w\| \cos\theta$, where $\theta$ is the angle between them.

In particular, if the vectors $v$ and $w$ are [[orthogonal]] (i.e., their [[angle]] is $\frac{\pi}{2} =90^\circ$), then $\cos \frac{\pi}{2}=0$, which implies that $v\cdot w =0$

On the other extreme, if they are [[codirectional]] then the angle between them is zero with $\cos 0=1$ and $v\cdot w=\|v\|$