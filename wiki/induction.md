
# Proof Pattern
$$
\forall P \bigg(\underbrace{ P(0) }_{ \text{b.c.} } \land \underbrace{ \forall k \big(\underbrace{ P(k) \to P(k+1) }_{ \text{ i.H.} } \big) \to \forall n(P(n) }_{ \text{i.S} } \bigg)
$$
**Mathematical induction** is a method for [[proof|proving]] that a [[statement]] $P(n)$ is true for every [[natural number]] $n$, that is, that the infinitely many cases $P(0),P(1),P(2),P(3),\dots$  all hold. This is done by first proving a simple case, then also showing that if we assume the claim is true for a given case, then the next case is also true.

It consists of three major parts, the **base case** ($b.c.$), proves the statement for some fixed $k \in \N$ (typically $0$ or $1$). The **inductive hypothesis** is formulated as the [[assumption]] that, if the statement holds for some fixed $k$, it also holds for $k+1$. Then, the 
