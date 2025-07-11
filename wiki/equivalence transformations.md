
Two ways to understand
$F=\forall A(x=0 \vee \exists y (x\cdot y = 1))$

- w/o interpretation (universe, predicates, what is equal?):
    $F \equiv \forall x (\lnot\lnot (x=0) \vee \exists y (x\cdot y = 1))$
    $F \equiv \forall x (\lnot (x=0) \rightarrow \exists y (x\cdot y = 1))$

- with interpretation:
    every number that is not zero has a multiplicative inverse
    valid (Q, R)
    invalid (N, Z)


>$\exists x (P(x) \wedge Q(x))$
>$\exists x P(x) \wedge \exists x Q(x)$
>
>$\exists x (P(x) \wedge Q(x)) \vDash \exists x P(x) \wedge \exists x Q(x)$
>$\exists x P(x) \wedge \exists x Q(x) \nVdash \exists x (P(x) \wedge Q(x))$


>[!example] Definitions:
>"$\vDash$": F is true if P($\alpha$) and Q($\alpha$) for some (same) $\alpha \exists \mathbb{U}$
>Then there's an x($\alpha$) so that P(x) true
>**and** an x($\alpha$) so that Q(x) true
>
>"$\nVdash$": Let U=$\mathbb{N}$, P(x) $\overset{def.}{\Leftrightarrow}$ even(x), Q(x)$\overset{def.}{\Leftrightarrow}$ odd(x)
>Then G is true but F isn't.


- $\exists x (F \wedge G) \equiv \exists x F \vee \exists x G$
- $\forall (F \wedge G) \equiv \forall x F \wedge \forall x G$
- $\forall x /F \vee G) \not\vDash \forall x F \vee \forall x G$
- $\lnot \forall x F \equiv \exists x \lnot F, \lnot \exists x F \equiv \forall x \lnot F$
- $\exists x \exists y F \equiv \exists y \exists x F$
- $\forall x \forall y F \equiv \forall y \forall x F$

- $\exists y \forall x F \vDash \forall x \exists y F$
- $\forall x \exists y F \nvDash \exists y \forall x F$


- F tautology

- $F := \forall x P(x) \rightarrow \exists P(x)$
- $\quad\equiv \lnot \forall x P(x) \vee \exists x P(x)$ \[Def. $\rightarrow$]
- $\quad\equiv \exists x \lnot P(x) \vee \exists x P(x)$ \[2.4.8]
- $\quad\equiv\exists x (\lnot P(x) \vee P(x))$ \[Ch. 6]
- $\quad\equiv \exists x \top$
- $\quad\equiv\top$


>[!example] Just a formula, **not** a statement:
>$\exists x \forall y \, x \leq y, \, for \, U=\mathbb{N}, \leq on\, \mathbb{N}$ (true) statement
>(**false** statement) for $U=\mathbb{Z}$

>[!example] Composition of $\implies$
>If $S\implies T$ and $T\implies U$ are true, we condclude $S\implies U$ true as well.
>Proof: $(A\rightarrow B) \wedge (B\rightarrow C) \vDash A \rightarrow C$
>
>Variants:

>[!example] Direct proof of $\implies$
>To prove $S\implies T$: assume $S$ is true, then prove $T$ under this assumption.
>i.e.: If $a,\,b\in \mathbb{Z}$, then $a\cdot b$ square.
>$a=u\cdot u\,and\,b=v\cdot v,\,for\,some\,u\,v\in\mathbb{Z}$
>$\overset{\cdot}{\implies}a\cdot b = (u\cdot u)\cdot (v\cdot v)\,for\,some\,u,\,v\in\mathbb{Z}$ \[assumption]
>$\overset{\cdot}{\implies}a\cdot b = (u\cdot v)\cdot (u\cdot v)\,for\,some\,u,\,v\in\mathbb{Z}$ \[associativity, commutivity]
>$\overset{\cdot}{\implies}a\cdot b = w\cdot w\,for\,some\,w\in\mathbb{Z}$ \[w=u, v]
