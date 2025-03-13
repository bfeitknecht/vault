---
module: "[[FMFP]]"
prev: "[[FMFP-v-w02]]"
next: "[[FMFP-v-w03]]"
---


# Info
"syntactic sugar causes semantic cancer"


# Topics
- $\alpha$-conversion
- validity and satisfiability of first order logic
- universal quantification
- structure
- interpretation
- formal induction proof
- list types in haskell `(x:xs)`


# Notes
- $\forall-I$ universal quantifier introduction requires $x$ not free in any assumption in $\Gamma$
- patterns cannot have function evaluations
- patterns are linear, no duplicate variables (except wildcard `_`)


## Precedence of Propositional Logic Operations

| Operation | Associativity |
| --------- | ------------- |
| $\lnot$   | right         |
| $\land$   | left          |
| $\lor$    | left          |
| $\to$     | right         |


## Natural Deduction
$$
\begin{align}
&\begin{prooftree}
\AXC{}
\RL{${\small \mathrm{AXIOM}}$}
\UIC{$\Gamma, A \vdash A$}
\end{prooftree} \\ \\
&\begin{prooftree}
\AXC{$\Gamma, A \vdash B$}
\RL{$\to_{I}$}
\UIC{$\Gamma \vdash A \to B$}
\end{prooftree} \\ \\
&\begin{prooftree}
\AXC{$\Gamma \vdash A \to B$}
\AXC{$\Gamma \vdash A$}
\RL{${\small \to_{E}}$}
\BIC{$\Gamma \vdash B$}
\end{prooftree} \\ \\

\end{align}
$$
