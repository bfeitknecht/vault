---
module: "[[FMFP]]"
prev: "[[FMFP-v-w03]]"
next: "[[FMFP-v-w05]]"
---


# Info
- favorite lambda type, `() :: ()`


# Topics
- formal induction
- well ordering of natural numbers
- algebraic data types
- types, terms, expressions

# Notes
- type judgment derivation rules correspond with propositional logic
	- tuple $\sim$ conjunction introduction $\mathrm{Tup} \sim \land_{I}$
	- application $\sim$ implication introduction $\mathrm{Aps} \sim\; \to_{I}$
	- lambda abstraction and implication elimination $\mathrm{Abs} \sim\; \to_{E}$
	- variable and axiom, $\mathrm{Var} \sim\mathrm{Ax}$
	- 

## Type Judgment
- $t :: \tau$ corresponds to the term $t$ having type $\tau$, i.e. `typeof` operator $\approx$ `==`
- $x_{i} : \tau_{i}$ corresponds to a binding of variable $x_{i}$ to type $\tau_{i}$, i.e. binding operator $\approx$ `:=`
- 