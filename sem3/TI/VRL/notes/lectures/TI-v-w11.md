
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
> - reductions (EE, R)
> - language classes (recursive, recursive enumerable)
> - proof of rice's theorem
> - time and space complexity of TM
> - time and space complexity classes
> - dito for NTM
> - space and time constructible function


___


**Definition 5.7.** $L \subseteq \mathrm{KodTM}$ is semantic non-trivial decision problem about TM if the following holds.
1. $L \neq \varnothing$
2. $L \neq \mathrm{KodTM}$
3. For two TM, $A, B$ if $L(A) = L(B)$ then $\mathrm{Kod}(A) \in L \iff \mathrm{Kod}(B) \in L$


**Lemma 5.8.** Halting language on lambda is not not recursive.
$$
L_{\mathrm{H}, \lambda} = \{  \mathrm{Kod}(M) \mid \text{$M$ halts on $\lambda$} \} \not\in \mathcal{L}_{\mathrm{R}}
$$


**Rice's theorem**. Every semantic non-trivial decision about TM is undecidable. Proof. Case distinction.
1. If $\mathrm{Kod}(M_{\varnothing}) \in L$ then construct reduction such that $L_{\mathrm{H},\lambda} \leq_{\mathrm{EE}} L^{\complement} \overset{ \text{L.5.3} }{ \implies } L_{\mathrm{H},\lambda} \leq_{\mathrm{R}} L^{\complement} \overset{ \text{L.5.4} }{ \implies } L_{\mathrm{H},\lambda} \leq_{\mathrm{R}} L$.
2. If $\mathrm{Kod}(M_{\varnothing}) \not\in L$ then construct reduction such that $L_{\mathrm{H},\lambda} \leq_{\mathrm{EE}} L \overset{ \text{L. 5.3} }{ \implies } L_{\mathrm{H},\lambda} \leq_{\mathrm{R}} L$
By contraposition both statements are false and the claim thus proven.


If a language and its complement have accepting TM then the language is decidable, since we can interleave the two TM which then always halts. $L \in \mathcal{L}_{\mathrm{RE}} \land L^{\complement} \in \mathcal{L}_{\mathrm{RE}} \implies L \in \mathcal{L}_{\mathrm{R}}$

If for a language $L$ it holds that 

The language $L$ is $\mathrm{NP}$-hard, if for every language $L' \in \mathrm{NP}$ it holds that we can do the polynomial reduction $L' \leq_\mathrm{p} L$.
If $L \in \mathrm{NP}$ then it is said to be $\mathrm{NP}$-complete.


clique, VC, DS, etc. is important!!

$k\mathrm{SAT}$ is formulae in CNF with clauses of **up to** $k$ literals
$\mathrm{E}k\mathrm{SAT}$ is formulae in CNF with clauses of **exactly** $k$ **distinct** literals

$\mathrm{SAT}$ is important and will *most likely* be in exam
