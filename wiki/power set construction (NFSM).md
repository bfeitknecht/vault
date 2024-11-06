
For every [[non-deterministic finite state machine (NFSM)|NFSM]] $M = (Q_{M}, \Sigma_{M}, \delta_{M}, q_{0M}, F_{M})$ there exists an [[finite state machine (FSM)|FSM]] $A = (Q_{A}, \Sigma_{A}, \delta_{A}, q_{0A}, F_{A})$ such that $L(M) = L (A)$. We define $A$ as follows.

1. $Q_{A} = \{ \langle P \rangle \mid P \subseteq Q_{M} \} = \mathcal{P}(Q_{M})$
2. $\Sigma_{A} = \Sigma_{M}$
3. $\delta_{A} : Q_{A} \times \Sigma_{A} \to Q_{A}$, where $\delta_{A}(\langle P \rangle, a) = \left\langle \bigcup_{p \in P}\delta_{M}(p, a) \right\rangle$
4. $q_{0A} = q_{0M}$
5. $F_{A} = \{  \langle P \rangle \in Q_{A} \mid P \cap F_{M} \neq \varnothing \}$










 









![[hromkovic-TI.pdf#page=92&rect=46,548,437,614|hromkovic-TI, p.77]]




![[hromkovic-TI.pdf#page=97&rect=53,382,432,612|hromkovic-TI, p.82]]