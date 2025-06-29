---
module: "[[DMDB]]"
prev: "[[DMDB-v-w02]]"
next: "[[DMDB-v-w04]]"
tags: 
slides:
  - "[[DMDB-s02-relational-calculus.pdf]]" 
  - "[[DMDB-s03-entity-relationship-model.pdf]]"
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
- `CREATE VIEW` only captures state of data at moment of creation
- view is only updatable, if it maintains injectivity between view and base relation, i.e.
	- it involves only one base relation
	- it involves the key of the base relation
	- it does not involve aggregates, group-by or duplicate elimination

- ER model is constraint language that defines the set of valid DB instances
	- possible values to take, $\mathcal{D} = \mathcal{B} \cup \Delta$
		- $\mathcal{B}$, concrete values (`integer`, `character`, `float`, etc.)
		- $\Delta$, abstract values corresponding to entities
