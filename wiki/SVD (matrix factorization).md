
The **SVD** (singular value decomposition) is the ultimate theorem of linear algebra. For an $m \times n$ matrix $A$ with $\mathrm{rank}(A) = r$ it's as follows.
$$
A = U \Sigma V^{\top}
$$




```tikz
\usepackage{tikz} 
\begin{document}

\begin{tikzpicture}

% A
\draw[thick] (0, 0) rectangle (3, 2);

\node at (3.5, 1) {$=$};

%% U
\draw[thick] (4, 0) rectangle (6, 2);
\fill[gray!50] (6, 0) rectangle (6, 2);

%% Singular value diagonal matrix
%\draw[thick] (3.5, 0) rectangle (5, 3);
%\fill[gray!50] (3.5, 2.5) -- (4, 2.5) -- (3.5, 2) -- cycle;
%\fill[gray!50] (4.5, 1.5) -- (5, 1.5) -- (4.5, 1) -- cycle;
%
%% Right matrix (Document by Dimension)
%\draw[thick] (5.5, 0) rectangle (6.5, 3);
%\fill[gray!50] (5.5, 1.5) rectangle (6.5, 3);

\end{tikzpicture}
\end{document}
```

