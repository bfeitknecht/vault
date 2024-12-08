
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

> [!info]+ Clarification
> 1. Ihr dürft die Implikation "L in LRE and L^C in LRE ==> L in LR" an der Prüfung verwenden. Schreibt aber die Implikation hin wenn ihr sie verwendet.  
> 2. Ihr dürft die Implikation "L1 <=EE L2 ==> (L2 in LRE => L1 in LRE))" auch verwenden. Ihr müsst aber hier auch hinschreiben, dass aus <=EE die Implikation folgt.  
> 3. Für polynomiale Reduktionen dürft ihr aus dem Buch bekannte Reduktionen als Zwischenschritte verwenden, wenn dies von der Aufgabe erlaubt ist. Achtet auf die Formulierung! Wahrscheinlich wird die Aufgabe so formuliert sein, dass ihr keine Zwischenschritte brauchen dürft.

> [!warning]+ Study
> - [x] reductions (EE, R) ✅ 2024-12-07
> - [x] language classes (decidable, recognizable) ✅ 2024-12-07
> - [x] definition semantically non-trivial decision problem about TM ✅ 2024-12-07
> - [x] proof of rice's theorem ✅ 2024-12-08
> - [ ] time and space constructible function
> - [ ] definition time and space complexity
> - [ ] deterministic time and space complexity classes
> - [ ] non-deterministic time and space complexity classes
> - [ ] polynomial time reduction
> - [ ] 


___


**Definition 6.9.** $A$ is $p$-verifier algorithm with $p : \mathbb{N} \to \mathbb{N}$ for language $L \subseteq \Sigma^{*}$, $V(A) = L$ if the following holds for all $(s, w) \in \Sigma^{*} \times \Sigma_{\mathbb{B}}^{*}$.
1. $\mathrm{Time}_{A}(s, w) \leq p(|s|)$, verification computation for input is bounded by function on length of statement
2. $\forall s \in L, \exists w \in \Sigma_{\mathbb{B}}^{*} : (s, w) \in L(A), |w| \leq p(|s|)$, for any statement there exists a witness with length bounded by $p$
3. $\forall s' \not\in L, \not\exists \in \Sigma_{\mathbb{B}}^{*} : (s', w') \in L(A)$, no false statement has a witness

It follows that the languages $L(A) \neq V(A)$. Specifically, the verification language is composed of all statements that have a valid witness bounded by $p$.
$$
V(A) = \{ s \in \Sigma^{*} \mid \exists w \in \Sigma_{\mathbb{B}}^{*}, |w| \leq p(|s|) : (s, w) \in L(A) \}
$$
If $p(n) \in O(n^{k})$ for some $k \in \mathbb{N}$ then we say that $A$ is polynomial time verifier. This gives the definition of polynomial time verifiable languages.
$$
\mathrm{VP} = \{ V(A) \mid \text{$A$ is polynomial time verifier} \}
$$


**Example 6.2.** A $k$-clique of a graph $G = (V, E)$ on $n = |V|$ with $k \leq n$ is a complete subgraph on $k$ vertices in $G$.
$$
\mathrm{CLIQUE} = \{ x\#y \mid x, y \in \Sigma_{\mathbb{B}}^{*} : \text{$x$ encodes $G_{x}$ which contains $y$-clique}  \}
$$


**Theorem 6.8.** $\mathrm{VP} = \mathrm{NP}$. Proof by double set inclusion. Intuitively, the class $\mathrm{NP}$ is all languages $L$ such that for all $x \in L$ there exists a witness $w$ with $|w| \in O(|x|^{k})$ for $k \in \mathbb{N}$ that can be verified in deterministic polynomial time with respect to the input length, $|x|$.


___

The language $L$ is $\mathrm{NP}$-hard, if for every language $L' \in \mathrm{NP}$ it holds that there exists a polynomial reduction $L' \leq_\mathrm{p} L$.
If $L \in \mathrm{NP}$ then it is said to be $\mathrm{NP}$-complete.


clique, VC, DS, etc. is important!!

$k\mathrm{SAT}$ is formulas in CNF with clauses of **up to** $k$ literals
$\mathrm{E}k\mathrm{SAT}$ is formulas in CNF with clauses of **exactly** $k$ **distinct** literals

$\mathrm{SAT}$ is important and will *most likely* be on exam


