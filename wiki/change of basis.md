
```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
    {V'_{\widetilde{\mathcal{B}}}} &&&& {W'_{\widetilde{\mathcal{C}}}} \\
    \\
    \\
    & X && Y \\
    \\
    \\
    {V_\mathcal{B}} &&&& {W_{\mathcal{C}}}
    \arrow["{A'}", from=1-1, to=1-5]
    \arrow[from=1-1, to=4-2]
    \arrow[from=1-5, to=4-4]
    \arrow["{\psi_{W}}", dashed, tail, from=1-5, to=7-5]
    \arrow[from=4-2, to=1-1]
    \arrow["T", from=4-2, to=4-4]
    \arrow[from=4-2, to=7-1]
    \arrow[from=4-4, to=1-5]
    \arrow[from=4-4, to=7-5]
    \arrow["{\psi_{V}}", dashed, tail, from=7-1, to=1-1]
    \arrow[from=7-1, to=4-2]
    \arrow["A", from=7-1, to=7-5]
    \arrow[from=7-5, to=4-4]
\end{tikzcd}

\end{document}
```


Let $V = \mathbb{K}^{n}$ and $W = \mathbb{K}^{m}$. For a [[linear transformation]] $T_{A} : X \subseteq V \to Y \subseteq W$ described by a [[matrix]] $A$, there may exist much easier to work with vector spaces $V', W'$, e.g. ones that have an [[orthonormal basis]]. The process of finding such an equivalent but more elegant [[vector space]] is called **change of basis**.