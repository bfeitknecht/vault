---
module: "[[DMDB]]"
prev: "[[DMDB-v-w02]]"
next: "[[DMDB-v-w04]]"
tags:
slides:
  - "[[DMDB-s02-relational-calculus.pdf]]"
  - "[[DMDB-s03-entity-relationship-model.pdf]]"
  - "[[DMDB-s04-NULL-views.pdf]]"
---


# Info


# Topics
- [[entity relationship model (ER)]]
- SQL
    - `INDEX`
    - `VIEW`
    - `LIMIT`
    - `OFFSET`
    - `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- [[candidate key]]
- [[primary key]]
- extract-transform-load (ETL)


# Notes
- `CREATE VIEW` only captures state of data at moment of creation, "alias" for the query
- view is only updatable, if it maintains injectivity between view and base relation, i.e.
    - it involves only one base relation
    - it involves the key of the base relation
    - it does not involve aggregates, group-by or duplicate elimination

- ER model is constraint language that defines the set of valid DB instances
    - possible values to take, $\mathcal{D} = \mathcal{B} \cup \Delta$
        - $\mathcal{B}$, concrete values (`integer`, `character`, `float`, etc.)
        - $\Delta$, abstract values corresponding to entities


## Three Value Logic

| `p`       | `q`       | `p OR q`  | `p AND q` | `p = q`   |
| --------- | --------- | --------- | --------- | --------- |
| ✓`TRUE`    | ✓`TRUE`    | ✓`TRUE`    | ✓`TRUE`    | ✓`TRUE`    |
| ✓`TRUE`    | X`FALSE`   | ✓`TRUE`    | X`FALSE`   | X`FALSE`   |
| ✓`TRUE`    | O`NULL` | ✓`TRUE`    | O`NULL` | O`NULL` |
| X`FALSE`   | ✓`TRUE`    | ✓`TRUE`    | X`FALSE`   | X`FALSE`   |
| X`FALSE`   | X`FALSE`   | X`FALSE`   | X`FALSE`   | ✓`TRUE`    |
| X`FALSE`   | O`NULL` | O`NULL` | X`FALSE`   | O`NULL` |
| O`NULL` | ✓`TRUE`    | ✓`TRUE`    | O`NULL` | O`NULL` |
| O`NULL` | X`FALSE`   | O`NULL` | X`FALSE`   | O`NULL` |
| O`NULL` | O`NULL` | O`NULL` | O`NULL` | O`NULL` |

| `p`       | `NOT p`   |
| --------- | --------- |
| ✓`TRUE`    | X`FALSE`   |
| X`FALSE`   | ✓`TRUE`    |
| O`NULL` | O`NULL` |

| `p`      | `p IS TRUE` | `p IS NOT TRUE` | `p IS FALSE` | `p IS NOT FALSE` | `p IS NULL` | `p IS NOT NULL` |
| -------- | ----------- | --------------- | ------------ | ---------------- | ----------- | --------------- |
| ✓`TRUE`  | ✓`TRUE`     | X`FALSE`        | X`FALSE`     | ✓`TRUE`          | X`FALSE`    | ✓`TRUE`         |
| X`FALSE` | X`FALSE`    | ✓`TRUE`         | ✓`TRUE`      | X`FALSE`         | X`FALSE`    | ✓`TRUE`         |
| O`NULL`  | X`FALSE`    | ✓`TRUE`         | X`FALSE`     | ✓`TRUE`          | ✓`TRUE`     | X`FALSE`        |
