
A ([[deterministic]]) **finite state machine** (FSM) is a [[tuple|quintuple]] $M =(Q, \Sigma, \delta, q_{0}, F)$, where 

1. $Q$ is a finite, non-empty [[set]] of **states**
2. $\Sigma$ is an [[alphabet]], called **input alphabet**
3. $q_{0}\in Q$ is the **initial state**
4. $F\subseteq Q$ is the set of **accepted states**
5. $\delta:Q \times\Sigma \to Q$ is the **state-transition [[function]]**

A **configuration** of $M$ is an element from $Q\times\Sigma^*$ and denots that $M$ exists in the *state* $(q, w) \in Q \times \Sigma^*$ but has yet to read the [[substring|suffix]] $w$ of the input [[word]].

A configuration $(q_{0}, x)\in \{q_{0}\} \times\Sigma^*$ is called **initial configuration** of $M$ on $x$. Every configuration in $Q\times \{\lambda \}$ is called an **end configuration**.

A **step** of $M$ is a [[relation]] on configurations, $\vdash_{M} \subseteq (Q\times\Sigma^*)\times(Q\times\Sigma^*)$, defined by
$$
(q, w) \underset{M}{\vdash}\vdash_{M}
$$
