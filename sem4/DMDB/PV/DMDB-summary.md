> [!danger]+ TO-DO
> - [x] relational algebra, relational calculus ✅ 2025-06-26
> - [x] SPJR algebra ✅ 2025-06-29
> - [ ] entity relationship model
> - [x] views ✅ 2025-08-21
> - [x] functional dependency ✅ 2025-08-15
> - [x] normal forms ✅ 2025-08-15
> - [x] `NULL` ✅ 2025-08-15
> - [x] primary key, candidate key, superkey ✅ 2025-06-29
> - [ ] transactions
> 	- [x] conflict serializability ✅ 2025-08-20
> 	- [x] recoverability classes ✅ 2025-08-20
> 		- [x] recoverable ✅ 2025-08-20
> 		- [x] ACA ✅ 2025-08-20
> 		- [x] strict ✅ 2025-08-20
> 	- [ ] snapshot isolation
> 	- [ ] locking

> [!info]+ Exercise
> - [x] quiz-01 relational model ✅ 2025-07-05
> - [x] quiz-02 SQL-1 ✅ 2025-07-05
> - [x] quiz-03 SQL-2 ✅ 2025-08-18
> - [x] quiz-04 integrity constraint ✅ 2025-08-18
> - [x] quiz-05 normal form ✅ 2025-08-18
> - [x] quiz-06 functional dependency ✅ 2025-08-18
> - [x] quiz-07 SQL-3 ✅ 2025-08-18
> - [ ] quiz-08 query-processing
> - [ ] quiz-09 transactions
> - [ ] quiz-10 recovery, locking

> [!quote] Exams
> - [x] FS24 ✅ 2025-08-18
> - [x] FS23 ✅ 2025-08-18


# Recoverability Classes
![[DMDB-s15-concurrency-control.pdf#page=54&rect=183,42,756,443|DMDB-s15-concurrency-control, p.54|500]]

Transaction $T_{i}$ reads from $T_{j}$ exactly if $T_{i}$ reads some value written by $T_{j}$ at a time when $T_{j}$ is not aborted.

## Conflict Serializability
To check **conflict serializability**, construct serializability graph for history $\text{H} = (o_{i})_{n}$ consisting of $m$ transactions $\{ T_{k} \equiv (o_{j})_{n_{k}} \}_{m}$ of $n_{k}$ operations each. For every pair of conflicting operations (RW, WR, WW) on the same item  from different transactions $T_{i}, T_{j}. i \neq j$, draw directed edge according to partial order $<_{\text{H}}$ induced by history, $T_{i} \to T_{j} \iff o_{i} <_{\text{H}} o_{j}$. If the resulting graph is acyclic, the history is conflict serializable through topological sort. This implies serializability. *Transactions have serialization order.*

## Recoverable
The history $\text{H}$ is recoverable if, whenever $T_{i}$ reads version of $X$ written by $T_{j}$ with $i \neq j$, then $T_{j}$ commits before $T_{i}$, i.e. $c_{j} <_{\text{H}} c_{i}$. *Transactions commit in their serialization order.*
$$
\forall r_{i}(X) \leadsto w_{j}(X). c_{j} <_{\text{H}} c_{i}
$$

## ACA
#todo 

*Transactions only read from committed transactions.*
$$
\forall r_{i}(X) \leadsto w_{j}(X). c_{j} <_{\text{H}} r_{i}(X)
$$

## Strict
#todo 

*Transactions do not read or overwrite updates of uncommitted transactions.*
$$
\begin{align}
(1) &: \forall r_{i}(X) \leadsto w_{j}(X). c_{j} <_{\text{H}} r_{i}(X) \lor c_{j} <_{\text{H}} w_{i}(X) \\
(2) &: \forall w_{i}(X) \leadsto w_{j}(X). a_{j} <_{\text{H}} r_{i}(X) \lor a_{j} <_{\text{H}} w_{i}(X)
\end{align}
$$
