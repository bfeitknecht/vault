
# Info

# Topics

# Notes
- primary key CANNOT be `NULL` and must be unique
- primary key can be tuple


| Operation    | $\mathrm{Set}$             | `PostgreSQL`                        |
| ------------ | -------------------------- | ----------------------------------- |
| intersection | $R_{1} \cap R_{2}$         | `R1 INTERSECT R2`                   |
| union        | $R_{1} \cup R_{2}$         | `R1 UNION R2`                       |
| selection    | $\sigma_{\mathrm{c}} (R)$  | `SELECT * FROM R WHERE c`           |
| projection   | $\prod_{ (A_{i})_{n}} (R)$ | `SELECT A1 ... An FROM R`           |
| renaming     | $\rho_{(B_{i})_{n}} (R)$   | `SELECT * AS B1 ... Bn FROM R`      |
| division     | $R_{1} \div R_{2}$         |                                     |
| difference   | $R_{1} - R_{2}$            | `SELECT * FROM R1 EXCEPT * FROM R2` |
