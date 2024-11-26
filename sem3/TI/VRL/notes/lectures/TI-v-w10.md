
- savitch's theorem (non-deterministic space complexity is at most square deterministic space complexity)
- reachable procedure


$\mathrm{DLOG} \subseteq \mathrm{NLOG} \subseteq \mathrm{P} \subseteq \mathrm{NP} \subseteq \mathrm{PSPACE} \subseteq \mathrm{EXPTIME}$

the following strict subset inclusions are known to hold

$\mathrm{DLOG} \subsetneq \mathrm{PSPACE}$ and $\mathrm{P} \subsetneq \mathrm{EXPTIME}$

- $\mathrm{P}$ can be understood as finding a proof
- $\mathrm{NP}$ can be understood as verifying a proof



Let $s : \mathbb{N} \to \mathbb{N}$ be space-constructible. Then for a MTM $M$ that decides any word $w \in L(M)$ with $\mathrm{Space}_{M}(w) \leq s(|w|)$, we can construct a MTM $A$ that decides any word $x \in \Sigma^{*}$ with the given space constriction. Proof idea: write a delimiter symbol on the input tape at position $s(|x|)$, if we reach it during computation on $x$, we reject since we know it can't be in the language anyway.

Similarly for time-constructible, although it takes twice the time. Basically we work backwards. First we have to write the symbol on the working tape and then compute.


![[hromkovic-TI.pdf#page=187&rect=39,69,441,236|hromkovic-TI, p.175]]
