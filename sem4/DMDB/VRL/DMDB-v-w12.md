---
course: "[[DMDB]]"
prev: "[[DMDB-v-w11]]"
next: "[[DMDB-v-w13]]"
tags:
  - todo
slides:
  - "[[DMDB-s17-logging.pdf]]"
  - "[[DMDB-s18-distributed-commit.pdf]]"
---


# Info


# Topics
- database transactions
- ACID


# Notes
![[DMDB-s15-concurrency-control.pdf#page=54&rect=183,42,756,443|DMDB-s15-concurrency-control, p.54]]
- what's inside log record?
- history is **recoverable** if, whenever $T_{i}$ reads from $T_{j}$ and commits, then $c_j < c_{i}$
