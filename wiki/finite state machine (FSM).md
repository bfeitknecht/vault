
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

A *computation* $C$ of $M$ is a finite [[sequence]] of steps $C=(C_{i})_{i=0}^n$ of configurations, where $C_{i}\vdash_{M}C_{i+1}$ for all $i\in[n-1]$.

