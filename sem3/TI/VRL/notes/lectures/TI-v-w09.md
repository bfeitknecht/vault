
- complexity theory
	- time complexity
	- space complexity


# Notes

For every k-MTM that **always halts** $A$ there exists a 1-MTM $B$ such that $\mathrm{Space}_{A}(n) \leq \mathrm{Space}_{B}(n)$. This is because we only care about the maximum amount of memory that we need.

Lemma 5.3, $L_{1} \leq_{\mathrm{EE}} L_{2} \implies L_{1} \leq_{\mathrm{R}} L_{2}$




___





```tikz
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}
	\draw (0,0) circle (3.75);
	\draw (0,0) circle (2.5);
	\draw (0,0) circle (1.25);
	\node at (0, 3.25) {\Large$\mathcal{L}_{\mathrm{RE}}$};
	\node at (0, 2.) {\Large$\mathcal{L}_{\mathrm{R}}$};
	\node at (0, 0.75) {\Large$\mathcal{L}_{\mathrm{EA}}$};
	
	\node at (0, 0) {$\ldots$};
	
	\node at (-0.25, -1.75) {$\{ 0^{n} 1^{n} \mid n \in \mathbb{N} \}$};
	\node at (-1.5, 1.25) {$L_{\mathrm{prime}}$};
	
	\node at (2.5, 2) {$L_{\mathrm{H}}$};
	\node at (-1.75, -2.75) {$L_{\mathrm{U}}$};
	\node at (-3.0, 1.0) {$L_{\mathrm{diag}}^{\mathsf{C}}$};
	
	\node at (-3.5, 3) {$L_{\mathrm{diag}}$};
	\node at (3.75, -2.75) {$L_{\mathrm{empty}}$};
	\node at (3.75, 2.75) {$L_{\mathrm{H}}^{\mathsf{C}}$};
\end{tikzpicture}

\end{document}
```




![[hromkovic-TI.pdf#page=147&rect=42,147,434,198|hromkovic-TI, p.134]]



![[hromkovic-TI.pdf#page=148&rect=45,238,440,324|hromkovic-TI, p.135]]



![[hromkovic-TI.pdf#page=148&rect=43,178,436,206|hromkovic-TI, p.135]]


![[hromkovic-TI.pdf#page=149&rect=42,201,428,237|hromkovic-TI, p.136]]



![[hromkovic-TI.pdf#page=150&rect=42,462,432,481|hromkovic-TI, p.137]]
![[hromkovic-TI.pdf#page=150&rect=41,355,438,374|hromkovic-TI, p.137]]
![[hromkovic-TI.pdf#page=150&rect=43,67,439,89|hromkovic-TI, p.137]]
![[hromkovic-TI.pdf#page=155&rect=49,321,428,344|hromkovic-TI, p.142]]
![[hromkovic-TI.pdf#page=155&rect=40,229,435,247|hromkovic-TI, p.142]]
![[hromkovic-TI.pdf#page=156&rect=41,150,434,169|hromkovic-TI, p.143]]
![[hromkovic-TI.pdf#page=157&rect=40,211,430,225|hromkovic-TI, p.144]]



![[hromkovic-TI.pdf#page=151&rect=40,482,432,580|hromkovic-TI, p.138]]

![[hromkovic-TI.pdf#page=152&rect=41,291,436,308|hromkovic-TI, p.139]]



![[hromkovic-TI.pdf#page=153&rect=41,189,435,228|hromkovic-TI, p.140]]
![[hromkovic-TI.pdf#page=153&rect=40,116,432,133|hromkovic-TI, p.140]]
But we have $L_{\mathrm{H}} \in \mathcal{L}_{\mathrm{RE}}$








![[hromkovic-TI.pdf#page=158&rect=40,583,441,610|hromkovic-TI, p.145]]


![[hromkovic-TI.pdf#page=158&rect=41,68,466,90|hromkovic-TI, p.145]]






![[hromkovic-TI.pdf#page=134&rect=39,421,435,450|hromkovic-TI, p.120]]