![[hasse-diagram.svg]]
A **partially ordered set**, often abbreviated as poset is a [[set]] equipped with a [[partial order relation]] $(S; \preceq)$. If any two elements are comparable, then the poset is said to be *totally ordered* $\forall s_{1}, s_{2} \in S : s_{1} \preceq s_{2} \lor s_{2} \preceq s_{1}$.

An intuitive way to depict a poset is as a [[directed acyclic graph]] called [[hasse diagram]].

The [[cross product]] between two posets, $(A; \preceq) \times (B; \sqsubseteq) = (A \times B; \leq)$ is defined component wise, $(a_{1}, b_{1}) \leq (a_{2}, b_{2}) \iff a_{1} \preceq a_{2} \land b_{1} \sqsubseteq b_{2}$. This is again a poset, as the required properties of the relation are inherited.
