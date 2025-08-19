> [!danger]+ TO-DO
> - [x] relational algebra, relational calculus ✅ 2025-06-26
> - [x] SPJR algebra ✅ 2025-06-29
> - [ ] entity relationship model
> - [ ] views
> - [x] functional dependency ✅ 2025-08-15
> - [x] normal forms ✅ 2025-08-15
> - [x] `NULL` ✅ 2025-08-15
> - [x] primary key, candidate key, superkey ✅ 2025-06-29
> - [ ] transactions
> 	- [ ] recoverability classes
> 	- [ ] conflict serializability
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


# Conflict Serializability
To check conflict serializability, construct **precedence graph** for history $\text{H} = (o_{i})_{n}$ consisting of $m$ transactions $\{ T_{k} \equiv (o_{j})_{n_{k}} \}_{m}$ of $n_{k}$ operations each. For every pair of conflicting operations (RW, WR, WW) on the same item $X$ from different transactions $T_{i}, T_{j}. i \neq j$, draw directed edge according to partial order $<_{\text{H}}$ induced by history, $T_{i} \to T_{j} \iff o_{i} <_{\text{H}} o_{j}$. If the resulting graph is acyclic, the history is conflict serializable through topological sort.

# Recoverability Classes
![[DMDB-s15-concurrency-control.pdf#page=54&rect=183,42,756,443|DMDB-s15-concurrency-control, p.54]]
## Recoverable
The history $\text{H}$ is recoverable if, whenever $T_{j}$ reads version of $X$ written by $T_{i}$ with $i \neq j$, then $T_{i}$ commits before $T_{j}$, i.e. $c_{i} <_{\text{H}} c_{j}$.
$$
\forall r_{j}(X). \exists w_{i}(X). c_{i} <_{\text{H}} c_{j}
$$

## ACA