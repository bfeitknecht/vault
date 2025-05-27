
![[five-matrix-decompositions.pdf#page=1&rect=427,15,520,514|five-matrix-decompositions, p.1|300]]

The **SVD** (singular value decomposition) is the ultimate theorem of linear algebra. For an $m \times n$ matrix $A$ with $\mathrm{rank}(A) = r$ it's as follows.
$$
A = U \Sigma V^{\mathsf{T}}
$$


```tikz
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}

%% A
\draw[thick] (0, 0) rectangle (3, 2);

\node at (3.5, 1) {$=$};

%% U
\fill[gray!50] (4, 0) rectangle (5, 2);
\draw (5, 0) rectangle (6, 2);
\draw[thick] (4, 0) rectangle (6, 2);

%% Sigma
\fill[gray!50] (7, 1) rectangle (8, 2);
\draw (7, 1) rectangle (8, 2);
\draw[thick] (7, 0) rectangle (10, 2);

%% V^T
\fill[gray!50] (11, 1.5) rectangle (14, 2.5);
\draw	 (11, 1.5) rectangle (14, 2.5);
\draw[thick] (11, -0.5) rectangle (14, 2.5);

\end{tikzpicture}
\end{document}
```




```tikz
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}

%% A
\draw[thick] (0, 0) rectangle (2, 3);

\node at (2.5, 1.5) {$=$};

%% U
\fill[gray!50] (3, 0) rectangle (4, 3);
\draw (3, 0) rectangle (4, 3);
\draw[thick] (3, 0) rectangle (6, 3);

%% Sigma
\fill[gray!50] (7, 1.5) rectangle (8, 2.5);
\draw (7, 1.5) rectangle (8, 2.5);
\draw[thick] (7, 0.5) rectangle (10, 2.5);

%% V^T
\fill[gray!50] (11, 1.5) rectangle (13, 2.5);
\draw	 (11, 1.5) rectangle (13, 2.5);
\draw[thick] (11, 0.5) rectangle (13, 2.5);

\end{tikzpicture}
\end{document}
```
