
**EBNF** (extended backus naur form) is an abstract syntax specification for language description. It consists of four major parts:
- sequence 
- decision
- repetition
- [[recursion]]

It allows for the construction and verification of symbols through a set or EBNF rules. A typical EBNF assignment is of the form below.
$$
\text{<LHS> (left-hand-side)} \leftarrow \text{RHS (right-hand-side)}
$$

A symbol is legal according to a rule if, and only if all characters in the symbol correspond with the elements in the rule.

> [!info]+ Rules
> 
> *b* ← b
> *a* ← a
>
> **Sequence**
> *lhs* ← a b
>
> **Decision**
> *lhs* ← a | \[b\] | $\varepsilon$
> 
> **Repetition**
> *lhs* ← {a}
> 
> **Recurison**
> *lhs* ← a | lhs
> 

