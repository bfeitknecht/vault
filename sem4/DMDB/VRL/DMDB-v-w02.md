---
module: "[[DMDB]]"
prev: "[[DMDB-v-w01]]"
next: "[[DMDB-v-w03]]"
tags: 
slides:
  - "[[DMDB-s02-relational-calculus.pdf]]"
---

# Info
- do some `SQL` in `docker`

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
		- with no shared attributes, $R(A, B, C), S(D, E)$, the result is cartesian products $R \bowtie S = R \times S$
		- with all attributes shared, $R(A,B,C), S(A,B,C)$, the result is intersection $R \bowtie S = R \cap S$

| Operation           | `SQL`                                  | Notation                   | Definition                                                                              |
| ------------------- | -------------------------------------- | -------------------------- | --------------------------------------------------------------------------------------- |
| intersection        | `R INTERSECT S`                        | $R \cap S$                 |                                                                                         |
| union               | `R UNION S`                            | $R \cup S$                 |                                                                                         |
| difference          | `R EXCEPT S`                           | $R - S$                    |                                                                                         |
| cartesian product   | `SELECT * FROM R, S`                   | $R \times S$               |                                                                                         |
| relational division |                                        | $R \div S$                 | $\prod_{R - S}R - \prod_{R -S} \left( \left( \prod_{R-S} R\right) \times S - R \right)$ |
| selection           | `SELECT * FROM R WHERE c`              | $\sigma_{\mathrm{c}} (R)$  | $\{ x \in R \mid c(x) \}$                                                               |
| projection          | `SELECT A1, .. An FROM R`              | $\prod_{ (A_{i})_{n}} (R)$ |                                                                                         |
| renaming            | `SELECT A1 AS B1, .. An AS Bn FROM R`  | $\rho_{(B_{i})_{n}} (R)$   |                                                                                         |
| distinct            | `SELECT DISTINCT FROM R`               | $\delta(R)$                |                                                                                         |
| inner join          | `SELECT * FROM R INNER JOIN S ON TRUE` | $R \bowtie S$              | $R(A,B) \bowtie S(B,C) = \prod_{A, B, C} (\sigma_{R.B = S.B}(R \times S))$              |
| theta join          | `SELECT * FROM R JOIN S ON theta`      | $R \bowtie_{\theta} S$     | $R \bowtie_{\theta} S = \sigma_{\theta}(R \times S)$                                    |

## Relational Calculus
- model in first order logic is a tuple $\mathcal{M}= ( \mathbb{D}, \mathbb{I})$, where
	- $\mathbb{D}$ is the domain with all possible symbols
	- $\mathbb{I}$ is the interpretation function that maps to tuples of elements in the domain that fulfill a predicate
	- $\mathcal{M} = \phi$ if, and only if $\phi$ evaluates to true under $\mathcal{M}$
### Schema
- relation schema, $R(A_{1} : D_{1}, \dots A_{n} : D_{n})$, where $D_{i}$ is a constant
- database schema, $S = (R_{i})_{m}$, where $R_{i}$ is a relation of arity $n_{i}$
- domain, $\mathrm{dom} = \bigcup_{i \in \mathbb{N}}D_{i}$, infinite set of constants

### Instance
- relation instance, $R(A_{1} : D_{1}, \dots A_{n} : A_{n}) : I_{R} \subseteq \mathrm{dom}^{n}$, specifically $I_{R}$ is finite
	- finite set of facts over the relation
- database instance, $S(R_{1},\dots R_{m}) : \mathbb{I}$, is a function that maps the relation schema $R_{i}$ to an instance $\mathbb{I}(R_{i})$
	- finite set of facts over all relations