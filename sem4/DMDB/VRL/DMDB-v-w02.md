---
module: "[[DMDB]]"
prev: "[[DMDB-v-w01]]"
next: "[[DMDB-v-w03]]"
---

# Info
- do some `SQL` in `docker`

# Topics
- introduction to `SQL`
- [[natural join]]
- [[relational division]]
- [[relational algebra (RA)]]
- [[relational calculus (RC)]]
- [[safe queries]]
- [[domain independent relational calculus (DI-RC)]]
- 

# Notes
- primary key CANNOT be `NULL` and must be unique
- primary key can be tuple
- `WHERE != HAVING`
- there are multiple different ways to implement the same query in [[relational algebra]]
- relational calculus is declarative, relational algebra is imperative


![[DMDB-s02-relational-calculus.pdf#page=3&rect=56,43,924,434|DMDB-s-w02-relational-calculus, p.3]]


| Operation           | $\mathsf{Set}$             | `SQL`                                 | Definition                                                                              |
| ------------------- | -------------------------- | ------------------------------------- | --------------------------------------------------------------------------------------- |
| intersection        | $R \cap S$                 | `R INTERSECT S`                       |                                                                                         |
| union               | $R \cup S$                 | `R UNION S`                           |                                                                                         |
| difference          | $R - S$                    | `R EXCEPT S`                          |                                                                                         |
| cartesian product   | $R \times S$               | `SELECT * FROM R, S`                  |                                                                                         |
| relational division | $R \div S$                 |                                       | $\prod_{R - S}R - \prod_{R -S} \left( \left( \prod_{R-S} R\right) \times S - R \right)$ |
| selection           | $\sigma_{\mathrm{c}} (R)$  | `SELECT * FROM R WHERE c`             | $\{ x \in R \mid c(x) \}$                                                               |
| projection          | $\prod_{ (A_{i})_{n}} (R)$ | `SELECT A1, .. An FROM R`             |                                                                                         |
| renaming            | $\rho_{(B_{i})_{n}} (R)$   | `SELECT A1 AS B1, .. An AS Bn FROM R` |                                                                                         |
| distinct            | $\delta(R)$                | `SELECT DISTINCT FROM R`              |                                                                                         |
| inner join          | $R \bowtie S$              |                                       |                                                                                         |
- schema of $R, S$ must be identical, otherwise can't apply operation
- order is irrelevant, relations in RA are sets
- $T =R \div S$ is the largest relation such that $S \times T \subseteq R$
