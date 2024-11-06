
A **[[non-deterministic]] [[finite state machine (FSM)|finite state machine]]** (NFSM) is a 5-[[tuple]] $M = (Q, \Sigma, \delta, q_{0}, F)$, where

1. $Q$ is a finite, non-empty [[set]] of *states*
2. $\Sigma$ is an [[alphabet]], called *input alphabet*
3. $\delta:Q \times\Sigma \to \mathcal{P}(Q)$ is the *state-transition [[function]]*
4. $q_{0}\in Q$ is the *initial state*
5. $F\subseteq Q$ is the set of *accepted states*

Similar to the deterministic variant, we define all languages accepted by an NFSM as $\mathcal{L}_{\mathrm{NEA}} = \{ L(M) \mid M \text{ is NFSM} \}$.

The computing power of an FSM $M_{1}$ and an NFSM $M_{2}$ is equal, i.e. their accepted languages are equal $\mathcal{L}_{\mathrm{EA}} = \mathcal{L}_{\mathrm{NEA}}$.


Furthermore, we can construct a FSM $A$ from any NFSM $M$ such that they are equivalent, i.e. $L(A) = L(M)$.
![[power set construction (NFSM)]]
