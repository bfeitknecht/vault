
A **sigma algebra** ($\sigma$-algebra) over some [[set]] $X$ is a non-empty collection of subsets closed under complement, countable union and intersection. Formally it's a subset of the [[power set]], i.e. $\Sigma \subseteq \mathcal{P}(X)$ such that the following holds.
1. $X \in \Sigma$
2. closure under complement, $A \in \Sigma \iff (X - A) \in \Sigma$
3. closure under countable union, $\mathcal{I}\subseteq \mathbb{N} : A_{i \in \mathcal{I}} \in \Sigma \implies \bigcup_{i \in \mathcal{ I}} A_{i} \in \Sigma$

Easily checked sigma algebras are the following.
- trivial case, $\{ \varnothing, X \}$
- one event, $\{ \varnothing, A, A^{\complement}, X \}$
- total, $\mathcal{P}(X)$

In the context of probability theory, an [[element]] $A \in \Sigma$ is called an *event*. If the measurable space is equipped with a [[probability measure]] so that it forms a [[probability space]], then for an independent family of events $(A_{i})_{i \in \mathcal{I}}$, it holds that $\forall \mathcal{J} \in \mathcal{P}(\mathcal{I}.) \Pr\left[ \bigcap_{j \in \mathcal{J}} A_{j} \right] = \prod_{j \in \mathcal{J}} A_{j}$. That is to say, pairwise independence does not imply total independence.

The pair $(X, \Sigma)$ forms a [[measurable space]].
