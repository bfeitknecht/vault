
- complexity theory
	- time complexity
	- space complexity


# Notes

For every k-MTM that **always halts** $A$ there exists a 1-MTM $B$ such that $\mathrm{Space}_{A}(n) \leq \mathrm{Space}_{B}(n)$. This is because we only care about the maximum amount of memory that we need.

Lemma 5.3, $L_{1} \leq_{\mathrm{EE}} L_{2} \implies L_{1} \leq_{\mathrm{R}} L_{2}$




___

## Language Definitions

$$
\begin{align}
\mathrm{KodTM} &= \{ \mathrm{Kod}(M) \mid \text{$M$ is a TM} \} \\
L_{\mathrm{empty}} &= \{ \mathrm{Kod}(M) \mid L(M) = \varnothing \} \\
L_{\mathrm{U}} &= \{ \mathrm{Kod}(M)\#w \in \Sigma_{\mathbb{B}}^{*} \mid w \in L(M) \} \\
L_{\mathrm{H}} &= \{ \mathrm{Kod}(M)\#x \in \Sigma_{\mathbb{B}}^{*} \mid \text{$M$ halts on $x$} \}
\end{align}
$$


```tikz
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}
	\draw (0,0) circle (3.75);
	\draw (0,0) circle (2.5);
	\draw (0,0) circle (1.25);
	\node at (0, 3.25) {\Large$\mathcal{L}_{\mathrm{RE}}$};
	\node at (0, 2.) {\Large$\mathcal{L}_{\mathrm{R}}$};
	\node at (0, 0.75) {\Large$\mathcal{L}_{\mathrm{EA}}$};
	
	\node at (0, 0) {$\dots$};
	
	\node at (-0.25, -1.75) {$\{ 0^{n} 1^{n} \mid n \in \mathbb{N} \}$};
	\node at (-1.25, 1.25) {$L_{\mathrm{prime}}$};
	
	\node at (2.5, 2) {$L_{\mathrm{H}}$};
	\node at (-1.75, -2.75) {$L_{\mathrm{U}}$};
	\node at (-3.0, 1.0) {$L_{\mathrm{diag}}^{\complement}$};
	\node at (2.25, -2.25) {$L_{\mathrm{empty}}^{\complement}$};
	
	\node at (3.75, 2.75) {$L_{\mathrm{H}}^{\complement}$};
	\node at (-4.25, 1.5) {$L_{\mathrm{diag}}$};
	\node at (3.75, -3) {$L_{\mathrm{\mathrm{empty}}}$};
	
\end{tikzpicture}

\end{document}
```



![[TI-nwehrl-w08.pdf#page=32&rect=25,54,381,193|TI-nwehrl-w08, p.29]]



![[hromkovic-TI.pdf#page=147&rect=42,147,434,198|hromkovic-TI, p.134]]


![[hromkovic-TI.pdf#page=148&rect=45,238,440,324|hromkovic-TI, p.135]]


![[hromkovic-TI.pdf#page=148&rect=43,178,436,206|hromkovic-TI, p.135]]


![[hromkovic-TI.pdf#page=149&rect=42,201,428,237|hromkovic-TI, p.136]]

The decidable languages are proper subset of the recognizable languages.
$L_{\mathrm{diag}}^{\complement} \in \mathcal{L}_{\mathrm{RE}} - \mathcal{L}_{\mathrm{R}} \implies \mathcal{L}_{\mathrm{R}} \subsetneq \mathcal{L}_{\mathrm{RE}}$

Language and its complement recognizable implies language is decidable.
$L \in \mathcal{L}_{\mathrm{RE}} \land L^{\complement} \in \mathcal{L}_{\mathrm{RE}} \implies L \in \mathcal{L}_{\mathrm{R}}$

Furthermore, it holds that that a reduction implies deduction about recognizable class membership.
$L_{1} \leq_{\mathrm{EE}} L_{2} \implies (L_{2} \in \mathcal{L}_{\mathrm{RE}} \implies L_{1} \in \mathcal{L}_{\mathrm{RE}})$


___


> [!quote]+ **Proof patterns** for language class membership
> 
> $L \in \mathcal{L}_{\mathrm{R}}$
> 1. **Reduction**. Language $L' \in \mathcal{L}_{\mathrm{R}}$. Prove reduction $L \leq_{\mathrm{R}} L'$. Alternatively prove $L \leq_{\mathrm{EE}} L'$, implies the former.
> 2. **Construction** of TM $M$. Prove $L(M) = L$ and that $L$ always halts.
> 
> $L \not\in \mathcal{L}_{\mathrm{R}}$
> 1. **Trivial**. $L \not\in \mathcal{L}_{\mathrm{RE}}$, since $\mathcal{L}_{\mathrm{R}} \subset \mathcal{L}_{\mathrm{RE}}$.
> 2. **Reduction**. Language $L' \not\in \mathcal{L}_{\mathrm{R}}$. Prove $L' \leq_{\mathrm{EE}} L$. Alternatively prove $L' \leq_{\mathrm{R}} L$.
> 3. **Rice's theorem**. Semantic non-trivial decision problem about TM. 
> 
> $L \in \mathcal{L}_{\mathrm{RE}}$
> 1. **Construction** of TM $M$ such that $L(M) = L$. Doesn't have to halt on all inputs, just recognize language.
> 
> $L \not\in \mathcal{L}_{\mathrm{RE}}$
> 1. **Diagonalization** argument.
> 2. **Contradiction** argument of the form $L \in \mathcal{L}_{\mathrm{RE}} \land L^{\complement} \in \mathcal{L}_{\mathrm{RE}} \implies L \in \mathcal{L}_{\mathrm{R}}$.

