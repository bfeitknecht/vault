
The **SVD** (singular value decomposition) is the ultimate theorem of linear algebra. For an $m \times n$ matrix $A$ with $\mathrm{rank}(A) = r$ it's as follows.
$$
A = U \Sigma V^{\top}
$$

<!--
```tikz
\usepackage{tikz}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}

\begin{document}
\begin{tikzpicture}
% Define the truncated term-by-document matrix (A_k)
\node[draw, rectangle, minimum width=2cm, minimum height=3cm, align=center] (Ak) at (0,0) {$A_k$};

% Define the term-by-dimension matrix (T)
\node[draw, rectangle, minimum width=1cm, minimum height=3cm, align=center, right=1.5cm of Ak] (T) {Term \\ by \\ Dimension};

% Define the singular values matrix (S)
\node[draw, rectangle, minimum width=1cm, minimum height=1cm, align=center, above=0.5cm of T] (S) {Singular \\ Values};

% Add a dotted diagonal line in S
\draw[dotted, thick] ($(S.north west)+(0.1,-0.1)$) -- ($(S.south east)+(-0.1,0.1)$);

% Define the document-by-dimension matrix (D)
\node[draw, rectangle, minimum width=3cm, minimum height=1cm, align=center, right=1.5cm of S] (D) {D};

%%    % Label each matrix with 'k'
%%    \node[below left=0.2cm of S] (kS) {$k$};
%%    \node[above right=0.2cm of S] (kD) {$k$};
%%    \node[above left=0.2cm of T] (kT) {$k$};
%%
%%    % Add "+" and "=" signs
%%    \node at ($(T.west)!0.5!(Ak.east)$) {$=$};
%%    \node at ($(S.east)!0.5!(T.east)$) {$\times$};
%%    \node at ($(D.west)!0.5!(S.east)$) {$\times$};
\end{tikzpicture}
\end{document}
```

-->
