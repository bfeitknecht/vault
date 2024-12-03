
- cook's theorem


# Notes

- every language in $L \in \mathrm{NP}$ has a polynomial reduction to $\mathrm{SAT}$, it is $\mathrm{NP}$-complete
Proof. Exists NTM $M$ that accepts $L$ (NTM because equivalent models of computation). Reduction. $B_{M} : \Sigma^{*} \to \Sigma_{\mathrm{logic}}^{*}$ such that for every $w \in \Sigma^{*}$ the following holds.
$$
w \in L(M) \iff B_{M}(w) \in \mathrm{SAT}
$$

We show that for every word over the alphabet, it is in the language $L$ exactly if it corresponds to a satisfiable boolean logic formula. We define the following formula in CNF that is true exactly when only one of the boolean variables is true.
$$
U(x_{1}, x_{2}, \dots, x_{n}) = \left( \bigvee_{i \in [n]} x_{i} \right) \land \left( \bigwedge_{i,j \in [n], i \neq j} (\overline{x_{i}} \lor \overline{x_{j}}) \right)
$$

$B_{M}$ constructs the formula $B_{M}(x) = A \land B \land C \land D \land E \land F \land G$ in CNF as follows.

$$
\begin{align}
A \\
B \\
C \\
D \\
E \\
F \\
G
\end{align}
$$













$A = \bigwedge_{t\in [p(|w)]} A_{t}$ 