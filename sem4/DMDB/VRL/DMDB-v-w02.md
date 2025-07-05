---
module: "[[DMDB]]"
prev: "[[DMDB-v-w01]]"
next: "[[DMDB-v-w03]]"
tags:
slides:
  - "[[DMDB-s01-relational-algebra.pdf]]"
  - "[[DMDB-s02-relational-calculus.pdf]]"
---

# Info
- `SQL`

# Topics
- [[relational algebra (RA)]]
- [[natural join]]
- [[relational division]]
- [[relational calculus (RC)]]
- [[safe queries]]
- [[domain independent relational calculus (DI-RC)]]
- introduction to `SQL`

# Notes
- primary key CANNOT be `NULL` and must be unique
- primary key can be tuple, then it is a composite primary key
- `WHERE` is different from `HAVING`
- there are multiple different ways to implement the same query in [[relational algebra]]
- relational calculus is declarative, relational algebra is imperative
- power map of different systems
	![[DMDB-s02-relational-calculus.pdf#page=3&rect=56,43,924,434|DMDB-s-w02-relational-calculus, p.3]]

## Relational Algebra
- table of operations in RA
	- schema of $R, S$ must be identical, otherwise can't apply operation
	- order is irrelevant, relations in RA are sets
	- $T =R \div S$ is the largest relation such that $S \times T \subseteq R$
	- inner join edge cases
		- with no shared attributes, join equals to cartesian product, $\mathrm{Attr}(R) \cap \mathrm{Attr}(S) = \varnothing \implies R \Join S = R \times S$
		- with all attributes shared, join equals intersection, $\mathrm{Attr}(R) = \mathrm{Attr}(S) \implies R \Join S = R \cap S$
	- restriction of tuple, $t[a_{i}]_{n} = \{ (a', v) \in t \mid a' \in [a_{i}]_{n} \}$
	- semijoin reduction saves communication by not sending complete relations
		- $R \Join S = \underbracket{ \big(R \ltimes \Pi_{R \cap S} (S) \big) }_{ 1. } \Join \underbracket{ S }_{ 2. }$
		1. semijoin sends only what matters in $S$ to $R$
		2. join sends back only what matters in $R$ to $S$

| Operation           | `SQL`                                           | Notation                                                 | Definition                                                                                                                        |
| ------------------- | ----------------------------------------------- | -------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| intersection        | `(SELECT * FROM R) INTERSECT (SELECT * FROM S)` | $R \cap S$                                               | like set semantics                                                                                                                |
| union               | `(SELECT * FROM R) UNION (SELECT * FROM S)`     | $R \cup S$                                               | ''                                                                                                                                |
| difference          | `(SELECT * FROM R) EXCEPT (SELECT * FROM S)`    | $R - S$                                                  | ''                                                                                                                                |
| cartesian product   | `SELECT * FROM R, S`                            | $R \times S$                                             | ''                                                                                                                                |
| relational division | n/a                                             | $R \div S$                                               | maximum relation that estimates  inverse of product, $\Pi_{R - S}(R) - \Pi_{R - S} \big( \Pi_{R-S} (R) \times (S - R) \big)$      |
| selection           | `SELECT * FROM R WHERE c`                       | $\sigma_{\mathrm{c}} (R)$                                | tuples that fulfill condition, $\{ t \in R \mid c(t) \}$                                                                          |
| projection          | `SELECT A1, .. An FROM R`                       | $\Pi_{ (A_{i})_{n}} (R)$                                 | restriction of tuples to attribute subset, $\{ t[A_{i}]_{n} \mid t \in R \}$                                                      |
| renaming            | `SELECT A1 AS B1, .. An AS Bn FROM R`           | $\rho_{(B_{i} \leftarrow A_{i})_{n}} (R)$, $\rho_{S}(R)$ | attribute $B_{i}$ renamed to $A_{i}$ or relation $R$ renamed to $S$                                                               |
| distinct            | `SELECT  * DISTINCT FROM R`                     | $\delta(R)$                                              | duplicate tuples (rows) removed                                                                                                   |
| natural join        | `SELECT * FROM R NATURAL JOIN S`                | $R \Join S$                                              | tuples joined on shared attribute set, $\Pi_{R \cup S} (\sigma_{\bigwedge_{i \in [\|R \cap S\|]} R.A_{i} = S.A_{i}}(R \times S))$ |
| theta join          | `SELECT * FROM R JOIN S ON theta`               | $R \Join_{\theta} S$<br><br>                             | tuples joined on condition, $\sigma_{\theta}(R \times S)$                                                                         |
| equijoin            | `SELECT * FROM R JOIN USING (A)`                | $R \Join_{A} S$                                          | tuples joined on attribute equality, $\sigma_{R.A = S.A}(R \times S)$                                                             |
| semijoin            | `SELECT * FROM R WHERE A IN (SELECT A FROM S)`  | $R \ltimes S$                                            | restriction of join to one operand's tuples, $\Pi_{R}(R \Join S)$                                                                 |


## Relational Calculus
- model in first order logic is a tuple $\mathcal{M}= ( \mathbb{D}, \mathbb{I})$, where
	- $\mathbb{D}$ is the domain with all possible symbols
	- $\mathbb{I}$ is the interpretation function that maps to tuples of elements in the domain that fulfill a predicate
	- $\mathcal{M} \models \phi$ if, and only if $\phi$ evaluates to true under $\mathcal{M}$

### Schema
- relation schema, $R(A_{1} : D_{1}, \dots A_{n} : D_{n})$, where $D_{i}$ is a constant
- database schema, $S = (R_{i})_{m}$, where $R_{i}$ is a relation of arity $n_{i}$
- domain, $\mathrm{dom} = \bigcup_{i \in \mathbb{N}}D_{i}$, infinite set of constants

### Instance
- relation instance, $R(A_{1} : D_{1}, \dots A_{n} : A_{n}) : I_{R} \subseteq \mathrm{dom}^{n}$, specifically $I_{R}$ is finite
	- finite set of facts over the relation
- database instance, $S(R_{1},\dots R_{m}) : \mathbb{I}$, is a function that maps the relation schema $R_{i}$ to an instance $\mathbb{I}(R_{i})$
	- finite set of facts over all relations

### Query
- syntax of query is $Q_{\phi} = \{ (x_{1}, \dots x_{k}) \mid \phi\}$, where $\phi$ is a first-order logic formula with $\mathrm{free}(\phi) = \{ x_{i} \}_{k}$
- each relation $R$ corresponds to a predicate in $\phi$
- each instance $\mathbb{I}$ corresponds to a first-order interpretation of $\phi$
- an assignment is a mapping $\alpha : \mathsf{Var} \to \mathrm{dom}$
- semantics of query over an instance $\mathbb{I}$ is given by $Q(\mathbb{I}) = \{ ( \alpha(x_{1}), \dots (x_{k}) ) \mid \mathbb{I, \alpha \models \phi} \}$
- relation calculus query $Q_{\phi}$ is **safe**, if its resolution is finite for all database instances, i.e. $\forall \mathbb{I}. |Q_{\phi}(\mathbb{I})| < \omega$
	- safety of query undecidable
- active domain is set of all constants in RC query constraint $\phi$ and DB instance $\mathbb{I}$, written $\mathrm{adom}(\phi, \mathbb{I})$
- semantics of active domain query, $Q_{\mathrm{adom}(\phi , \mathbb{I})} = \{ (x_{1}, \dots x_{k}) \mid \phi' \land \forall i \in [k]. x_{i} \in \mathrm{adom(\phi, \mathbb{I})} \}$
	- $\phi'$ constrains all variables in $\phi$ bound by quantifiers to $\mathrm{adom}(\phi, \mathbb{I})$
- result of query in RC under active domain semantics is always finite

