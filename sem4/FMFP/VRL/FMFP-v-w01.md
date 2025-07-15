---
module: "[[FMFP]]"
prev: "[[FMFP]]"
next: "[[FMFP-v-w02]]"
---

# Plan
- introduction to FP
- history of FP
- haskell syntax

# Notes

### Introduction to FP
- does programming language make a difference in computation power? NO!
- in imperative language (Java, C, etc.) functions modify state, i.e. update memory
- imperative `gcd`, correctness proved with hoare logic (tedious)
- functional `gcd`, recursive description of a function, algorithm if function execution is specified
- functions compute valuesaa
- function have ==no side effects!== this is called **referential transparency**
- recursion instead of iteration, flexible type system
- eager evaluation, immediately evaluate arguments first (call by value)
- lazy evaluation, only evaluate arguments when needed (call by need)


### Lambda Calculus
theoretical framework for describing functions and their evaluations


### Haskell
- like a calculator
- lazy evaluation
- indentation matters!
- strong type system

function definition
- simple
- guards
- case distinction
- patterns

types
- `Char`
- `String`
- `Double`

tuple
- used to model records
- can be nested
- singleton is not tuple


parentheses are type constructor AND term constructor
:: is haskell notation for term LHS has type RHS
patterns, very powerful
guards are boolean expressions
patterns are variables, constants or built from data constructors like tuples
let builds one expression from others in a local scope, can be `in` another expression
