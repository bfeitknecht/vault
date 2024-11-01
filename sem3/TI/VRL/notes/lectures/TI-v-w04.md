
- simulation
- [[deterministic]] [[finite state machine (FSM)]]
- [[graph]] representation of FSM
- [[set#operations]] operations on FSM
- [[pumping lemma]]
- [[language]] [[regularity]] $\iff$ exists FSM that accepts language


**19/30 pts.**


# Proof of non-regularity of some language $L$

For the sake of contradiction, let's assume $L\in \mathcal L_{EA}$, i.e. there exists a finite state machine $M=(\dots)$ s.t. $L(M)=M$. Let $x \in \Sigma$ and $x^{1}, \dots x^{|Q|+1}$ be $|Q|+1$ input words. 

Per pigeon hole principle, w.o.l.g there exists two different words, $a, b \in \Sigma^*, a \neq b$ that result in the same state.

Then, per Lemma 3.3., $az \in L \iff bz \in L$ for all $z \in \Sigma^*$.
Thus we have arrived at a **contradiction**, since, per construction, $az \in L$ but $bz \not\in L$.
$\contradiction$

