---
module: "[[DMDB]]"
prev: "[[DMDB]]"
next: "[[DMDB-v-w02]]"
tags: 
slides:
  - "[[DMDB-s01-intro.pdf]]"
  - "[[DMDB-s01-relational-algebra.pdf]]"
---

# Info
Data is very important. Databases manage data as an abstraction for the programmer.

# Topics
- programming language `SQL`
- DBMS
- IMS hierarchical model
- CODASYL network model


# Notes
Implementation of`SQL` is not consistent across database providers.

DBMS avoids redundancy and inconsistency, facilitates synchronized access, etc. Declarative language says, how to make it! Traditional programming languages are imperative (tell computer what to do). Persistency and consistency are the attractive strong guarantees of DB.

DB and OS are close friends and also enemies, as both do a lot of the same things. Different to the OS, the DB has a very clear and precise idea of what it is expected to perform.


Drawback of hierarchical model is that data needs to conform to tree structure.


## Keys
| Key Type      | Definition                                                                                 | Properties                                  |
| ------------- | ------------------------------------------------------------------------------------------ | ------------------------------------------- |
| superkey      | set of one or more attributes that uniquely identifies every row                           | unique                                      |
| candidate key | minimal superkey, removing any one attribute destroys uniqueness, no redundant information | unique, minimal                             |
| primary key   | candidate key chosen for identification of tuples in relation                              | unique, minimal, not `NULL`                 |
| foreign key   | one or more attributes that reference candidate key of another relation                    | non-unique, nullable, referential integrity |
