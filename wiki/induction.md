
# Proof Pattern
$$
 \underbrace{ \underbrace{ P(0) }_{ \text{b. c.} } \land \underbrace{ \forall k \big( P(k) \to P(k+1) \big) }_{ \text{ i. H.} }  \to \forall n \big(P(n)\big) }_{ \text{i. S.} }
$$
**Mathematical induction** is a method for [[proof|proving]] that a [[statement]] $P(n)$ is true for every [[natural numbers]] $n$, that is, that the infinitely many cases $P(0),P(1),P(2),P(3),\dots$  all hold. This is done by first proving a simple case, then also showing that if we assume the claim is true for a given case, then the next case is also true.

It consists of three major parts, the **base case** $(\text{b. c.})$, proves the statement for some fixed $k \in \N$ (typically $0$ or $1$). The **inductive hypothesis** $\text{(i. H.)}$ is formulated as the [[assumption]] that, if the statement holds for some fixed $k$, it also holds for $k+1$. In the **induction step** $(\text{i. S.})$, we apply the $\text{i. H}.$ to the $\text{b. c.}$ and therefore show that by the principle of mathematical induction, this is true for any natural number.


