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

In [[euclidian space]], the dot product of two vectors $a$ and $b$ is defined by $a \cdot b = \|a\| \|b\| \cos\theta$, where $\theta$ is the angle between them.

In particular, if the vectors a![{\displaystyle \mathbf {a} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a957216653a9ee0d0133dcefd13fb75e36b8b9d) and b![{\displaystyle \mathbf {b} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/13ebf4628a1adf07133a6009e4a78bdd990c6eb9) are [orthogonal](https://en.wikipedia.org/wiki/Orthogonal "Orthogonal") (i.e., their angle is π2![{\displaystyle {\frac {\pi }{2}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/98f98bef5d4981ff6e2aa827d4699e347fb30db2) or 90∘![{\displaystyle 90^{\circ }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c326d317eddef3ad3e6625e018a708e290a039f6)), then cos⁡π2=0![{\displaystyle \cos {\frac {\pi }{2}}=0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/82a42c21d362dc99b3986486f963a3cce908269d), which implies that

a⋅b=0.