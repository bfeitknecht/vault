
A **probability measure** is a map that associates to each event a number between zero and one. Formally, let $\Omega$ be a sample space and $\mathcal{F}$ a [[sigma-algebra]]. Then a probability measure on $(\Omega, \mathcal{F})$ is a map $\Pr : \mathcal{F} \to [0, 1]$ that satisfies the following two conditions.
1. $\Pr[\Omega] = 1$
2. $A = \bigcup_{i \in \mathbb{N}}A_{i} \implies \Pr[A] = \sum_{i \in \mathbb{N}} \Pr[A_{i}]$, countable additivity for disjoint union
