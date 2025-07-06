---
module: "[[DMDB]]"
prev: "[[DMDB-v-w03]]"
next: "[[DMDB-v-w05]]"
tags: 
slides:
  - "[[DMDB-s04-NULL-views.pdf]]"
  - "[[DMDB-s05-recursion,integrity-constraints.pdf]]"
---


# Info


# Topics
- graph databases
- constraints
- recursive SQL queries

# Notes
- relation in a database $R(A_{i} : D_{i})_{n}$ can have **type constraint** and **key constraint**
	- $I_{R} \subseteq \bigtimes_{i \in [n]} D_{i} \mathop{\Big{\vert}}_{\forall t, t'. \mathrm{key}(t) = \mathrm{key}(t') \implies t = t'}$
- **integrity constraint** ensures relation's tuple's values are as specification demands
	- `UNIQUE` attribute allows null values!
	- `CHECK` enforces constraints creation of tuple
		- can't do subqueries
		- accepts `TRUE` and `UNKNOWN`
- **referential constraint** refers to tuple from different relation
	- different possible actions on modification like `ON UPDATE`, `ON DELETE`
		- `CASCADE`, propagate modification
		- `RESTRICT`, prevent deletion of primary key before modification, else error
		- `NO ACTION`, prevent modification after attempt, else error
		- `SET DEFAULT`, `SET NULL`

- recursive SQL queries are of the following form `WITH RECURSIVE R AS (S UNION T) Q`
	- `S` is the base query
	- `T` is the recursion step
	- `Q` is a query involving the recursive relation `R`
- recursion might not terminate!
- transitive closure is "ugly" in SQL because it's essentially isomorphic to first order logic which can't express that
