---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w07.md]]"
next: "[[FMFP-v-w09.md]]"
slides:
  - "[[FMFP-s09-formal-methods.pdf]]"
  - "[[FMFP-s10-IMP.pdf]]"
---
   
  
# Info
- "Formal methods give you an edge."


# Topics
- formal semantics
- undefined behavior
- semantic function


# Notes
- formal semantics non-trivial
- optimizations might be incorrect for expressions with side-effect
- semantic functions
$$
\begin{align} \\
\mathcal{N} &: \mathrm{Numeral} \to \mathrm{Val} \\
\sigma &: \mathrm{Var} \to \mathrm{Val}
\end{align}
$$