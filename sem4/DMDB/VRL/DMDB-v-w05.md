---
module: "[[DMDB]]"
prev: "[[DMDB-v-w04]]"
next: "[[DMDB-v-w06]]"
---


# Info
- n/a

# Topics
- [[functional dependency]]
- [[normal form]]
- data manipulation anomaly
- [[superkey]]


# Notes
- 1NF, only atomic domains, i.e. no tuple entries
- 2NF, every non-key attribute is minimally dependent on every key, i.e. everything depends on the key
- 3NF,
- BCNF, ..., i.e. only store same information once
- functional dependency is a constraint on attributes of a relation
	- if $X, Y \subseteq R$ then $X \to Y$ is functional dependency if every value $x \in X$ uniquely determines value in $y \in Y$
	- if $Y \subseteq X$ then $X \to Y$ is a trivial FD

