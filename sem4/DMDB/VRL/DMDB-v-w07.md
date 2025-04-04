---
module: "[[DMDB]]"
prev: "[[DMDB-v-w07]]"
next: "[[DMDB-v-w08]]"
---


# Info
- n/a


# Topics
- data analytics
- data cubes
- support
- confidence
- `CUBE` operator
- `ROLLUP` operator
- buffer cache


# Notes
- `CUBE` operator syntactic sugar for equivalent query with union over possible combinations of arguments
- `ROLLUP` is similar but only preserves prefixes of defined order, drops undesired combinations
- buffer cache similar to OS virtual memory and paging mechanism but 
	- DB knows access patterns
	- thus much more optimization possible
- 
