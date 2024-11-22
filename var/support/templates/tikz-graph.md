```tikz
\usepackage{tikz} 
\usetikzlibrary {graphs}

\begin{document}

\tikz[nodes={draw,circle}] {
  \node (a) at (0,1) {a};
  \node (b) at (0,-1) {b};
  \node (c) at (1,0) {c};
  \node (d) at (2, 1) {d};
  \node (e) at (2, -1) {e};

  \graph[]{
    (c) -- {(a), (b)},
    (a) -- (b),
    (c) -- {(d), (e)},
    (d) -- (e)
  };
}

\end{document}
```
