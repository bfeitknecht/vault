
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
> - [x] reductions (EE, R) ✅ 2024-12-07
> - [x] language classes (decidable, recognizable) ✅ 2024-12-07
> - [x] definition semantically non-trivial decision problem about TM ✅ 2024-12-07
> - [ ] proof of rice's theorem
> - [ ] time and space constructible function
> - [ ] definition time and space complexity
> - [ ] deterministic time and space complexity classes
> - [ ] non-deterministic time and space complexity classes


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


**Definition 6.9.** $A$ is $p$-verifier algorithm with $p : \mathbb{N} \to \mathbb{N}$ for language $L \subseteq \Sigma^{*}$, $V(A) = L$ if the following holds for all $(s, w) \in \Sigma^{*} \times \Sigma_{\mathbb{B}}^{*}$.
1. $\mathrm{Time}_{A}(s, w) \leq p(|s|)$, verification computation for input is bounded by function on length of statement
2. $\forall s \in L, \exists w \in \Sigma_{\mathbb{B}}^{*} : (s, w) \in L(A), |w| \leq p(|s|)$, for any statement there exists a witness with length bounded by $p$
3. $\forall s' \not\in L : (s', w') \not\in L(A) \forall w' \in \Sigma_{\mathbb{B}}^{*}$, no false statement has a witness

It follows that the languages $L(A) \neq V(A)$. Specifically, the verification language is composed of all statements that have a valid witness bounded by $p$.
$$
V(A) = \{ s \in \Sigma^{*} \mid \exists w \in \Sigma_{\mathbb{B}}^{*}, |w| \leq p(|s|) : (s, w) \in L(A) \}
$$
If $p(n) \in O(n^{c})$ for some $c \in \mathbb{N}$ then we say that $A$ is polynomial time verifier. This gives the definition of polynomial time verifiable languages.
$$
\mathrm{VP} = \{ V(A) \mid \text{$A$ is polynomial time verifier} \}
$$


**Example 6.2.** A $k$-clique of a graph $G = (V, E)$ on $n = |V|$ with $k \leq n$ is a complete subgraph on $k$ vertices in $G$.
$$
\mathrm{CLIQUE} = \{ x\#y \mid x, y \in \Sigma_{\mathbb{B}}^{*} : \text{$x$ encodes $G_{x}$ which contains $y$-clique}  \}
$$



___

The language $L$ is $\mathrm{NP}$-hard, if for every language $L' \in \mathrm{NP}$ it holds that there exists a polynomial reduction $L' \leq_\mathrm{p} L$.
If $L \in \mathrm{NP}$ then it is said to be $\mathrm{NP}$-complete.


clique, VC, DS, etc. is important!!

$k\mathrm{SAT}$ is formulae in CNF with clauses of **up to** $k$ literals
$\mathrm{E}k\mathrm{SAT}$ is formulae in CNF with clauses of **exactly** $k$ **distinct** literals

$\mathrm{SAT}$ is important and will *most likely* be on exam


