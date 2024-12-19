
```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
	{V'} &&&& {W'} \\
	\\
	\\
	& X && Y \\
	\\
	\\
	V &&&& W
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

For a [[linear map]] $T : X \to Y$ described by a matrix $A$ that maps the $m$-dimensional [[vector space]] $V$ to the $n$-dimensional $W$, sometimes it's possible to describe the map in terms of vector spaces $V', W'$ which posses [[basis (vector space)]] that are easier to work with.

