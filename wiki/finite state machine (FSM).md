
A ([[deterministic]]) **finite state machine** (FSM) is a [[tuple|quintuple]] $M =(Q, \Sigma, \delta, q_{0}, F)$, where 

1. $Q$ is a finite, non-empty [[set]] of *states*
2. $\Sigma$ is an [[alphabet]], called *input alphabet*
3. $q_{0}\in Q$ is the *initial state*
4. $F\subseteq Q$ is the set of *accepted states*
5. $\delta:Q \times\Sigma \to Q$ is the *state-transition [[function]]*

A *configuration* of $M$ is an element from $Q\times\Sigma^*$ and denots that $M$ exists in the *state* $(q, w) \in Q \times \Sigma^*$ but has yet to read the [[substring|suffix]] $w$ of the input [[word]].

A configuration $(q_{0}, x)\in \{q_{0}\} \times\Sigma^*$ is called *initial configuration* of $M$ on $x$.
Every configuration in $Q\times \{\lambda \}$ is called an *end configuration*.

A *step* of $M$ is a [[relation]] on configurations, $\vdash_{M} \subseteq (Q\times\Sigma^*)\times(Q\times\Sigma^*)$, defined by
$(q, w) \vdash_{M} (p, x) \iff w=ax, a \in \Sigma$, where $\delta(q, a) = p$. A step corresponds to evaluating the transition function on the current configuration of $M$ (meaning it's in state $q$ and reads the input symbol $a$), resulting in a transition to state $p$.

A *computation* $C$ of $M$ is a finite [[sequence]] of steps $C=(C_{i})_{i=0}^n$ of configurations, where $C_{i}\vdash_{M}C_{i+1},\forall i\in[n-1]$.
We call $C$ a computation of $M$ *on the input* $x\in\Sigma^*$ if $C_{0}=(q_{0},x)$ and $Q_{n}\in Q \times \{\lambda\}$ is an end configuration.
If $C_{n}\in F\times\{\lambda\}$ we say that $C$ is an *accepting computation* of $M$ on $x$ and that $M$ *accepts*the word $x$. In the case that $C_{n}\in (Q-F) \times\{\lambda\}$ we say that $C$ is a *rejecting* computation of $M$ on $x$ and that $M$ *rejects* (doesn't accept) the word $x$.

It's noted that $M$ has exactly one computation for every input $x\in\Sigma^*$.

The [[language]] $L(M)$ *accepted* by $M$ is defined as the set of all words in $w\in\Sigma^*$ such that the computation on $w$ is accepted, i.e. it ends in some end configuration $(q, \lambda)$ with $q\in F$.

The class of all languages accepted by finite state machines is denoted by $\mathcal L_{EA}$. It's also called the *class of regular languages* and every language $L$ in $\mathcal L_{EA}$ is called *regular*.

$\vdash_{M}^*$


$\Z \O$

