
Since a [[vector]] is just a one dimensional [[matrix]], there are two forms a vector can take. A **column vector**, $\mathbf{v} \in \mathbb R^m$ is a $m\times 1$ matrix, whereas a **row vector** $\mathbf{u} \in \mathbb R^n$ is a $1\times n$ matrix. 

Let $A\in\mathbb R^{m\times n}$ be some matrix,
$$
A =
\begin{bmatrix}
a_{11} &a_{12} &\dots &a_{1n} \\
a_{21} &a_{22} &\dots &a_{2n} \\
\vdots &\vdots &\ddots &\vdots \\
a_{m_{1}} &a_{m_{2}} &\dots &a_{mn}
\end{bmatrix}
$$

Then its row and column vectors are given by,
$$
A =
\begin{bmatrix}
\mid &\mid &&\mid \\
\mathbf{v}_{1} &\mathbf{v}_{2} &\dots &\mathbf{v}_{n} \\
\mid &\mid &&\mid
\end{bmatrix}
=
\begin{bmatrix}
\ \textemdash &\mathbf{u}_{1} &\textemdash\ \\
\ \textemdash &\mathbf{u}_{2} &\textemdash\ \\
&\vdots \\
\ \textemdash &\mathbf{u}_{m} &\textemdash\
\end{bmatrix}.
$$


similarily, for some *column vector* $\mathbf{w}\in \mathbb R^m$, 
$$
\mathbf{w=\begin{bmatrix}w_{1}\\ w_{2}\\ \vdots\\ w_{m} \end{bmatrix}},
$$
it's [[transpose]] $\mathbf{w}^\top=\begin{bmatrix}w_{1}, &w_{2}, &\dots, &w_{m }\end{bmatrix}$ is a *row vector* and vice versa.