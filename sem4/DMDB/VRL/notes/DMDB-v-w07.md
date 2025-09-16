---
module: "[[DMDB]]"
prev: "[[DMDB-v-w07]]"
next: "[[DMDB-v-w08]]"
tags: 
slides:
  - "[[DMDB-s10-analytics-1-frequent-itemsets.pdf]]"
  - "[[DMDB-s11-analytics-2-clustering-k-means.pdf]]"
---


# Info


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
- think about DB systems at very large scale
    - reduce length of linked list by having more hash buckets, tradeoff with memory
    - simple hash function, as computed maybe millions of times per second
