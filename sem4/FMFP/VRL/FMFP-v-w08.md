---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w07.md]]"
next: "[[FMFP-v-w09.md]]"
slides:
  - "[[FMFP-s09-formal-methods.pdf]]"
  - "[[FMFP-s10-IMP.pdf]]"
  - "[[FMFP-s11-operational-semantics.pdf]]"
---
   
  
# Info
- "Formal methods give you an edge."


# Topics
- formal semantics
- undefined behavior
- `IMP` imperative programming language
- semantic function


# Notes
- formal semantics non-trivial
- optimizations might be incorrect for expressions with side-effect
- semantic evaluation functions
	- meta variables, for arbitrary values of types
	- designated constant zero state, where all variables are zero
	- state function assigns to every variable a value, i.e. every variable is always initialized
	- arithmetic expression function maps syntactic operation to semantic "mathematical" interpretation
$$
\begin{align}
\mathcal{N} &: \mathsf{Numeral} \to \mathsf{Val} \\
\mathsf{State} &: \mathsf{Var} \to \mathsf{Val} \\
\mathcal{A} &: \mathsf{Aexp} \to \mathsf{State} \to \mathsf{Val} \\
\mathcal{B} &: \mathsf{Bexp} \to \mathsf{State} \to \mathsf{Bool}
\end{align}
$$
- there are no side effects in `IMP`
- evaluation of expressions can never fail
- expressions always terminate
- totality of semantic functions by structural induction over domains
- free variables