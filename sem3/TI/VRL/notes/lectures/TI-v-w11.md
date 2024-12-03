
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


# Endterm

> [!info]+ Topics
> 
> Die zweite freiwillige Zwischenprüfung wird hauptsächlich den Stoff umfassen, der durch die Vorlesung vom 29. Oktober bis und mit 3. Dezember sowie die Aufgabenblätter 7-10 abgedeckt wird. Natürlich wird auch eine allgemeine Vertrautheit mit dem Stoff der ersten Vorlesungshälfte vorausgesetzt.
> 
> Insbesondere das Kapitel 4 ist soweit relevant, wie der Formalismus der Turingmaschinen in den Kapiteln 5 und 6 verwendet wird.
> 
> Aus Kapitel 5 sind insbesondere die Abschnitte 5.2 bis 5.4 relevant (inklusive des Beweises des Satzes von Rice). Die Abschnitte 5.5 bis 5.7 sind nicht prüfungsrelevant.
> 
> Aus Kapitel 6 sind insbesondere die Abschnitte 6.2 bis 6.4 (ohne den Satz von Savitch) sowie 6.5 und 6.6 (ohne den Beweis des Satzes von Cook und ohne die Behandlung von Optimierungsproblemen) relevant.

> [!warning]+ Study
> - proof of rice's theorem
> - reductions (EE, R)



