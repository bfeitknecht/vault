---
module: "[[DMDB]]"
prev: "[[DMDB-v-w04]]"
next: "[[DMDB-v-w06]]"
tags: 
slides:
  - "[[DMDB-s06-functional-dependencies.pdf]]"
  - "[[DMDB-s07-normal-forms.pdf]]"
---


# Info


# Topics
- [[functional dependency]]
- [[normal form]]
- data manipulation anomaly


# Notes

## Functional Dependency
- functional dependency (FD) is a constraint on attributes of a relation
	- if $X, Y \subseteq R$ then $X \to Y$ is functional dependency if every value $x \in X$ uniquely determines value $y \in Y$
	- if $Y \subseteq X$ then $X \to Y$ is a trivial FD which satisfies reflexivity
	- $R \vDash \alpha \to \beta$ expresses that the relation satisfies the functional dependency
- armstrong's axioms for a set of FDs $F$, and a relation schema $\mathcal{R}$, with $\alpha, \beta , \gamma, \theta \subseteq \mathcal{R}$
	- reflexivity, $\alpha \subseteq \beta \implies \beta \to \alpha$
	- augmentation, $\alpha \to \beta \implies \alpha\gamma \to \beta\gamma$, where $\alpha\gamma = \alpha \cup \gamma$
	- transitivity, $\alpha \to \beta, \beta \to \gamma \implies \alpha \to \gamma$
	- together sound and complete
	- transitive closure, $F^{+}$ is set of all FDs that are implied
	- $F \vdash \alpha \to \beta$, syntactic entailment through application of inference rules
	- $F \vDash \alpha \to \beta$, semantic entailment
	- fundamental result of armstrong's axioms, $F \vDash \alpha \to \beta \iff F \vdash \alpha \to \beta$
	- closure of attribute set denoted by $\alpha^{+} = \{ \beta \in \mathcal{R} \mid F \vdash \alpha \to \beta \}$
	- other, derived inference rules
		- union, $\alpha, \beta, \alpha \to \gamma \implies \alpha \to \beta\gamma$
		- decomposition, $\alpha \to \beta\gamma \implies \alpha \to \beta, \alpha \to \gamma$
		- pseudo-transitivity, $\alpha \to \beta, \beta\gamma \to \theta \implies \alpha\gamma \to \theta$
	- minimal FD can't have LHS restricted, $\forall A \in \alpha. \alpha - \{ A \} \nrightarrow \beta \iff \alpha \overset\cdot\to \beta$
	- superkey uniquely identifies every row, $\alpha \to \mathcal{R}$ 
	- candidate key is minimal superkey, $\alpha \overset\cdot\to \mathcal{R}$
- minimal cover for $F$ is a set $G$ such that the following holds
	- $F \equiv G$
	- every RHS of FDs in $G$ is a single attribute
	- it's not not possible to make $G$ smaller without violating the previous requirements
		- removing FDs or restricting the LHS

## Normal Form
- 1NF, only atomic domains, i.e. ==no tuple entries==
- 2NF, every non-key attribute is minimally dependent on every key, i.e. ==everything depends on the key==
- 3NF, if at least one of the following holds for all attributes $X, Y \subseteq R$, i.e. ==no transitive dependencies==
	- $X \to Y$ is trivial FD
	- $X$ is a superkey
	- $Y$ is attribute of at least one key
- BCNF, same as 3NF but without last condition, i.e. only store same information once
- BCNF does not preserve all FD while 3NF does
- BCNF does not get rid of all data redundancies, only ones causes by FD
- lossless decomposition up to 4NF


![[DMDB-s07-normal-forms.pdf#page=41&rect=74,84,330,316|DMDB-s07-normal-forms, p.41|300]]
