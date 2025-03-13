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
\begin{prooftree}
\AXC{}
\RL{Ax}
\UIC{$\Gamma, \phi \vdash \phi$}
\end{prooftree}
$$
