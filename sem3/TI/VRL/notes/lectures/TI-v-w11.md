
- cook's theorem


# Notes

- every language in $L \in \mathrm{NP}$ has a polynomial reduction to $\mathrm{SAT}$
Proof. Exists NTM $M$ that accepts $L$ (NTM because equivalent models of computation). Reduction. $B_{M} : \Sigma^{*} \to \Sigma_{\mathrm{logic}}^{*}$ such that for every $w \in \Sigma^{*}$ the following holds.
$$
w \in L(M) \iff B_{M}(w) \in \mathrm{SAT}
$$

We show that every word over the alphabet, it is in the language $L$ exactly if it corresponds to a satisfiable boolean logic formula.
