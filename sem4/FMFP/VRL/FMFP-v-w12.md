---
course: "[[FMFP]]"
prev: "[[FMFP-v-w11]]"
next: "[[FMFP-v-w13]]"
tags:
slides:
  - "[[FMFP-s13-modeling.pdf]]"
  - "[[FMFP-s14-linear-time-properties.pdf]]"
---


# Info
- "You go to some random website, you don't know if it's made by your friend or the NSA."


# Topics
- verification of parallel programs
- model checking
- promela
- number only used once (nonce)
- linear temporal logic
- transition system
- safety property
- liveness property

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
    - $\mathrm{dom(\cdot)}$ denotes the possible values of a variable (its domain)
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
    - atomically wait until lock is available `locked == 0`, then lock it `locked = 1`
    - enter critical section, unlock
- can declare atomic section, `atomic {}`

- separate cryptography on data level from high level reasoning on protocol level, assume it just works

- infinite sequence $S^{\omega}$, where $s_{[i]} \in S^{\omega}$ denotes $i$-th element
- $\gamma \in \Gamma^{\omega}$ is a computation of transition system if the following hold
    - $\gamma_{[0]} = \sigma_{I}$
    - $\forall i \in \mathbb{N}. \gamma_{[i]} \to\gamma_{[i+1]}$
    - $\sigma \in \Gamma$ ranges over states of transition system
- $\mathcal{C}(\mathrm{TS})$ is the set of all computations of transition system $\mathrm{TS}$
- **linear time property** over states is a subset of computations, $P \subseteq \Gamma^{\omega}$
    - $\mathrm{TS} \vDash P \iff \mathcal{C}(\mathrm{TS}) \subseteq P$
    - every computation of $\mathrm{TS}$ belongs to $P$
- atomic propositions additionally specify a set $\mathrm{AP}$
    - atomic proposition contains no logical connective (logical AND, consequence, etc.)
    - must provide labeling function that maps configurations to sets of atomic propositions
    - $L : \Gamma \to \mathcal{P}(\mathrm{AP})$
    - $L(\sigma)$ is an abstract state
    - this allows for much simpler reasoning, since explicit state specification can be avoided
- trace is an abstraction of a computation
    - infinite sequence of abstract states
    - only care about the propositions of each state, not concrete state
    - $t \in \mathcal{P}(\mathrm{AP})^{\omega}$ is a trace of $\mathrm{TS}$ only if
        - $t = (L(\gamma_{[i]}))_{i \in \mathbb{N}}$, where $\gamma = (\gamma_{i})_{n \in \mathbb{N}} \in \mathcal{C}(\mathrm{TS})$ is a computation of the transition system
    - $\mathcal{T}(\mathrm{TS})$ is the set of all traces of a transition system
- **safety property** "something bad (which cannot be fixed) must never happen!", i.e. invariants
    - LT property $P$ is safety property only if
        - $\forall t \in \mathcal{P}(\mathrm{AP})^{\omega}. t \not\in P \implies \exists \widehat{t}. \forall (t' = \widehat{t}\dots) . t' \not\in P$, where $\widehat{t} = (t_{i})_{k \in \mathbb{N}}$ is the bad prefix
    - bad prefix is finite sequence of steps that leads to violation of property
    - violated in *finite* time
- **liveness property** "something good will happen eventually"
    - LT property $P$ is liveness property only if
        - $\forall\widehat{t} \in \mathcal{P}(\mathrm{AP})^{*} \implies \exists(t=\widehat{t}\dots). t \in P$
    - does not rule out any prefix
    - violated in *infinite* time
- every possible property can be written as a conjunction of safety properties and liveness properties
- trade-off between the two to meet desired specification and quality

- syntax of linear temporal logic
- LTL formula,  $\phi = p \mid \lnot \phi \mid \phi \land \phi \mid \phi \mathrel{\mathsf{U}} \psi \mid \mathop{\huge\circ}\phi$
    - atomic proposition $p \in \mathrm{AP} \neq \varnothing$
    - negation, conjunction as usual
    - until, non-negative natural number of steps
    - next, after current step
- semantics of LTL
    - $t \vDash \phi$ expresses that trace $t \in \mathcal{P}(\mathrm{AP})^{\omega}$ satisfies LTL formula $\phi$, defined as follows
        - $t \vDash p \iff p \in t_{[0]}$
        - $t \vDash \lnot\phi \iff \text{not } t \vDash \phi$
        - $t \vDash \phi \land \psi \iff t \vDash \phi \text{ and } t \vDash \psi$}$
        - $t \vDash \phi \mathrel{\mathsf{U}} \psi \iff \exists k \in \mathbb{N}_{+}. t_{(\geq k)} \vDash \psi \text{ and } \exists j \in \mathbb{N}_{+}, j < k. t_{(\geq j)} \vDash \phi$}$
        - $t \vDash \mathop{\huge\circ}\phi  \iff t_{(\geq1)} \vDash \phi$
    - derived operators and constants
        - $\mathrm{True}, \mathrm{False}, \lor, \Rightarrow, \Leftrightarrow$ as usual
        - eventually, $\mathop{\huge\diamond} \phi \equiv \mathrm{True} \mathrel{\mathsf{U}} \phi$
        - always, $\mathop{\square} \phi \equiv \lnot \mathop{\huge\diamond} \lnot \phi$
- $p \mathrel{\mathsf{U}} q$ is neither safety nor liveness property
    - $\{ p \}^{\omega}$ violates safety property, there is no bad prefix
    - $\{ \lnot p \} \{  q \} \dots$ violates liveness property, trace cannot be fixed
- useful patterns
    - strong invariant, $\mathop{\square} \phi$
        - $\phi$ always holds
        - safety property if $\phi$ is safety property
        - "file is always either open or closed"
    - monotone invariant, $\mathop{\square} (\phi \Rightarrow \mathop{\square} \phi)$
        - once $\phi$ holds it always holds
        - safety property if $\phi$ is safety property
        - "once information is public, it can never become secret again"
    - establishing invariant, $\mathop{\huge\diamond}\mathop{\square} \phi$
        - eventually $\phi$ always holds
        - liveness property if $\phi$ is satisfiable
        - "system initialization starts service"
    - responsiveness, $\mathop{\square} (\psi \Rightarrow \mathop{\huge\diamond} \phi)$
        - every time $\psi$ holds, $\phi$ will eventually hold
        - "all open files must be closed eventually"
        - liveness property if $\phi$ is satisfiable
    - fairness, $\mathop{\square} \mathop{\huge\diamond} \phi$
        - $\phi$ holds infinitely often
        - liveness property if $\phi$ is satisfiable
        - "producer does not wait infinitely long before critical section"
