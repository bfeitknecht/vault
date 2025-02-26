
# Info

# Topics

# Notes
- primary key CANNOT be `NULL` and must be unique
- primary key can be tuple
- `WHERE != HAVING`


| Operation         | $\mathrm{Set}$             | `PostgreSQL`                          |
| ----------------- | -------------------------- | ------------------------------------- |
| intersection      | $R_{1} \cap R_{2}$         | `R1 INTERSECT R2`                     |
| union             | $R_{1} \cup R_{2}$         | `R1 UNION R2`                         |
| difference        | $R_{1} - R_{2}$            | `R1 EXCEPT R2`                        |
| cartesian product | $R_{1} \times R_{2}$       | `SELECT * FROM R1, R2`                |
| division          | $R_{1} \div R_{2}$         |                                       |
| selection         | $\sigma_{\mathrm{c}} (R)$  | `SELECT * FROM R WHERE c`             |
| projection        | $\prod_{ (A_{i})_{n}} (R)$ | `SELECT A1, .. An FROM R`             |
| renaming          | $\rho_{(B_{i})_{n}} (R)$   | `SELECT A1 AS B1, .. An AS Bn FROM R` |

