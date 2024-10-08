
- simulation
- graph representation of [[finite state machine (FSM)]]
- set operations on [[finite state machine (FSM)]]
- pumping lemma
- 


**Points:** /30



non-regularity of some language $L$:
- proof by contradiction per definition of *finite* state machine and pigeonhole principle

For the sake of contradiction, let's assume $L\in \mathcal L_{EA}$, i.e. there exists a finite state machine $M=(\dots)$ s.t. $L(M)=M$. Let $x \in \Sigma$ and $x^{1}, \dots x^{|Q|+1}$ be $|Q|+1$ input words. Per pigeon hole principle, w.o.l.g there exists two words that result in the same state. Then, per lemma 3.3.