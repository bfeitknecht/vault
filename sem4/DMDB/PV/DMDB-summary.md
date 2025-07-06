> [!danger]+ TO-DO
> - [x] relational algebra, relational calculus ✅ 2025-06-26
> - [x] SPJR algebra ✅ 2025-06-29
> - [ ] entity relationship model
> - [ ] views
> - [ ] functional dependency
> - [ ] normal forms
> - [ ] `NULL`
> - [x] primary key, candidate key, superkey ✅ 2025-06-29

> [!info]+ Exercise
> - [x] quiz-01 relational model ✅ 2025-07-05
> - [x] quiz-02 SQL-1 ✅ 2025-07-05
> - [ ] quiz-03 SQL-2
> - [ ] quiz-04 integrity constraint
> - [ ] quiz-05 normal form
> - [ ] quiz-06 functional dependency
> - [ ] quiz-07 SQL-3
> - [ ] quiz-08 query-processing
> - [ ] quiz-09 transactions
> - [ ] quiz-10 recovery, locking

# Key
| Key Type      | Definition                                                                                 | Properties                                  |
| ------------- | ------------------------------------------------------------------------------------------ | ------------------------------------------- |
| superkey      | set of one or more attributes that uniquely identifies every row                           | unique                                      |
| candidate key | minimal superkey, removing any one attribute destroys uniqueness, no redundant information | unique, minimal                             |
| primary key   | candidate key chosen for identification of tuples in relation                              | unique, minimal, not `NULL`                 |
| foreign key   | one or more attributes that reference candidate key of another relation                    | non-unique, nullable, referential integrity |

# Normal Form
#todo 
