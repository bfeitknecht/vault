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
- there are different ways to implement the same query in [[relational algebra]]
- relational calculus is declarative, relational algebra is imperative


![[DMDB-s02-relational-calculus.pdf#page=3&rect=56,43,924,434|DMDB-s-w02-relational-calculus, p.3]]


| Operation           | $\mathrm{Set}$             | `SQL`                                 |
| ------------------- | -------------------------- | ------------------------------------- |
| intersection        | $R_{1} \cap R_{2}$         | `R1 INTERSECT R2`                     |
| union               | $R_{1} \cup R_{2}$         | `R1 UNION R2`                         |
| difference          | $R_{1} - R_{2}$            | `R1 EXCEPT R2`                        |
| cartesian product   | $R_{1} \times R_{2}$       | `SELECT * FROM R1, R2`                |
| relational division | $R_{1} \div R_{2}$         |                                       |
| selection           | $\sigma_{\mathrm{c}} (R)$  | `SELECT * FROM R WHERE c`             |
| projection          | $\prod_{ (A_{i})_{n}} (R)$ | `SELECT A1, .. An FROM R`             |
| renaming            | $\rho_{(B_{i})_{n}} (R)$   | `SELECT A1 AS B1, .. An AS Bn FROM R` |
| distinct            | $\delta(R)$                | `SELECT DISTINCT FROM R`              |

