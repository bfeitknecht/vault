---
module: "[[FMFP]]"
prev: "[[FMFP-v-w03]]"
next: "[[FMFP-v-w05]]"
---


# Info


# Topics
- formal induction
- well ordering of natural numbers
- algebraic data types
- types, terms, expressions

# Notes
$$
\begin{align}
\hline \Gamma \equiv \phi &\vdash \psi \\
\hline \varnothing &\vdash \phi \to \psi
\end{align}
$$

## Types
- $t :: \tau$ corresponds to the term $t$ having type $\tau$, i.e. `typeof` operator $\approx$ `==`
- $x_{i} : \tau_{i}$ corresponds to a binding of variable $x_{i}$ to type $\tau_{i}$, i.e. binding operator $\approx$ `:=`
- 