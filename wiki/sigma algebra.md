
A **sigma algebra** ($\sigma$-algebra) over some set $X$ is a non-empty collection of subsets closed under complement, countable union and intersection, i.e. the set of events. Formally it's $\Sigma \subseteq \mathcal{P}(X)$ such that the following holds.
1. $X \in \Sigma$
2. closure under complement, $A \in \Sigma \iff (X - A) \in \Sigma$
3. closure under countable union, $\mathcal{I}\subseteq \mathbb{N} : A_{i \in \mathcal{I}} \in \Sigma \implies \bigcup_{i \in \mathcal{ I}} A_{i} \in \Sigma$

The pair $(X, \Sigma)$ forms a [[measurable space]].