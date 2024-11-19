
A [[deterministic]] **turing machine** $M$ is a 7-[[tuple]], $M=(Q, \Sigma, \Gamma, \delta, q_{0}, q_{\checkmark}, q_{\mathsf{x}})$, where

1. $Q$ is the finite, non-empty *[[set]] of states* of $M$
2. $\Sigma$ is an [[alphabet]] called the *input alphabet*, where $\textcent, \textvisiblespace \not\in \Sigma$ 
3. $\Gamma$ is the *working alphabet*, where $\Sigma \subseteq \Gamma$, and $\textcent, \textvisiblespace \in \Gamma$, and $\Gamma \cap Q = \varnothing$
4. $\delta:(Q-\{ q_{\checkmark}, q_{\mathsf{x}} \}) \times \Gamma \to Q \times \Gamma \times \{ \mathrm{L}, \mathrm{R}, \mathrm{N} \}$ the *transition [[function]]*
5. $q_{0} \in Q$ the *initial state*
6. $q_{\checkmark} \in Q$ the one and only *accepting state*, where the machine halts and accepts the input word
7. $q_{\mathsf{x}} \in Q - \{ q_{\checkmark} \}$ the *rejecting state*, where $M$ halts and the input word is rejected

A *configuration* $C$ of $M$ is an element in the set defined below.
$$
\mathrm{Konf}(M) = \{ \textcent \} \cdot \Gamma^{*} \cdot Q \cdot \Gamma^{+} \cup Q \cdot \{  \textcent \} \cdot \Gamma^{*}
$$


Similarly to NFSM, there is also an equivalent [[non-deterministic turing machine (NTM)]].




# multi-tape turing machine (MTM)
![[multi-tape turing machine (MTM)]]
