---
module: "[[DMDB]]"
prev: "[[DMDB-v-w04]]"
next: "[[DMDB-v-w06]]"
---


# Info


# Topics
- [[functional dependency]]
- [[normal form]]
- data manipulation anomaly
- [[superkey]]


# Notes
- 1NF, only atomic domains, i.e. ==no tuple entries==
- 2NF, every non-key attribute is minimally dependent on every key, i.e. ==everything depends on the key==
- 3NF, if at least one of the following holds for all attributes $X, Y \subseteq R$, i.e. ==no transitive dependencies==
	- $X \to Y$ is trivial FD
	- $X$ is a superkey
	- $Y$ is attribute of at least one key
- BCNF, same as 3NF but without last condition, i.e. only store same information once
- functional dependency (FD) is a constraint on attributes of a relation
	- if $X, Y \subseteq R$ then $X \to Y$ is functional dependency if every value $x \in X$ uniquely determines value in $y \in Y$
	- if $Y \subseteq X$ then $X \to Y$ is a trivial FD
- BCNF does not preserve all FD while 3NF does
- BCNF does not get rid of all data redundancies, only ones causes by FD
- lossless decomposition up to 4NF


![[DMDB-s07-normal-forms.pdf#page=41&rect=74,84,330,316|DMDB-s07-normal-forms, p.41|300]]
