
The **SVD** (singular value decomposition) is the ultimate theorem of linear algebra. For an $m \times n$ matrix $A$ with $\mathrm{rank}(A) = r$ it's as follows.
$$
A = U \Sigma V^{\top}
$$




```tikz
\usepackage{tikz} 
\begin{document}

\begin{tikzpicture}

%% A
\draw[thick] (0, 0) rectangle (3, 2);

%% =
\node at (3.5, 1) {$=$};

%% U
\fill[gray!50] (5, 0) rectangle (6, 2);
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


%\fill[gray!50] (3.5, 2.5) -- (4, 2.5) -- (3.5, 2) -- cycle;
%\fill[gray!50] (4.5, 1.5) -- (5, 1.5) -- (4.5, 1) -- cycle;
%
%% Right matrix (Document by Dimension)
%
%

\end{tikzpicture}
\end{document}
```




```tikz
\usepackage{tikz} 
\begin{document}

\begin{tikzpicture}

%% A
\draw[thick] (0, 0) rectangle (2, 3);

%% =
\node at (, 1.5) {$=$};

%% U
\fill[gray!50] (5, 0) rectangle (6, 2);
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


%\fill[gray!50] (3.5, 2.5) -- (4, 2.5) -- (3.5, 2) -- cycle;
%\fill[gray!50] (4.5, 1.5) -- (5, 1.5) -- (4.5, 1) -- cycle;
%
%% Right matrix (Document by Dimension)
%
%

\end{tikzpicture}
\end{document}
```
