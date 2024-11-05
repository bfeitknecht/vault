

A **decision problem** is a 2-[[tuple]] $(\Sigma, L)$ of an [[alphabet]] $\Sigma$ and a [[language]] $L \subseteq \Sigma^{*}$ over that alphabet defined by *deciding*, for every word over the given alphabet $w \in \Sigma^{*}$ wether it is in the language $L$ or not.

We say that an algorithm $A$ **solves** the decision problem $(\Sigma, L)$ if the following holds.
$$
A(w) = \begin{cases}
1, & x \in L \\
0, & x \not\in L
\end{cases}, \quad \forall w \in \Sigma^{*}
$$

Alternatively, we say that $A$ *recognizes* the language $L$.

For a given decision problem $(\Gamma, L')$, if there exists an algorithm $M$ that recognizes the language, i.e. $L(M) = L$, then the language $L'$ is *recursive*.


# Properties

Let $\Sigma$ and $\Gamma$ be two alphabets. We say that an algorithm $A$ **computes** (realizes) a [[function]] (transformation) $f : \Sigma^{* \to \Gamma^{*}}$, if the following holds.
$$
A(x) = f(x), \quad \forall x \in \Sigma^{*}
$$

Let $\rho \subseteq \Sigma^{*} \times \Gamma^{*}$ be a [[relation]]. An algorithm $A$ computes $\rho$ (solves the relation problem) if the below stated holds.
$$
(x, A(x)) \in \rho, \quad \forall x \in \Sigma^{*}, \exists y \in \Gamma^{*}: (x,y) \in \rho
$$


# Examples

- $(\Sigma_{\mathbb{B}}, \mathbb{P})$, [[prime number]] decision problem
- $(\Sigma_{\text{logic}}, \text{SAT})$, decision of [[satisfiable]] [[formula (propositional logic)|logic formulae]]

