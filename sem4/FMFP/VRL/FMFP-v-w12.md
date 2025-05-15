---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w11.md]]"
next: "[[FMFP-v-w13.md]]"
slides: 
tags: 
---


# Info


# Topics
- verification of parallel programs
- model checking
- promela

# Notes
- model checker produces concrete counterexample for violated property
- systems are modeled as finite transition systems
```spin
#define N 5
mtype = {ack, req};
```

- number of possible states for sequential program, $k \prod_{\texttt{x}} |\mathrm{dom}(x)|$ where
	- $k$ is the number of program locations
	- $\texttt{x}$ ranges over variables used
	- $\mathrm{dom(\cdot)}$ denotes the number of possible values of a variable
- state space explosion, number of states grows exponentially in the number of variables
- for concurrent programs, number of processes is another explosion
- for promela, buffer and capacity are both another source of explosion
- expression statement is executable if $\texttt{E}$ does not evaluate to zero
- $\texttt{\_{}nr\_pr}$ contains the number of active processes at any time
- `if` selection statement semantically more like parallel choice in `IMP`
- to model conditional, write expression followed by `->` before statement
```promela
if
:: s1 /* first option */
:: s2 /* .. */
:: en -> sn /* conditional execution */
fi
```
- binary semaphore (locks)
	- global bit variable, `locked`
	- atomically wait until lock is available `locked == 0` and lock `locked = 1`
	- enter critical section, unlock
- can declare atomic section, `atomic {}`