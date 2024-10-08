
- simulation
- graph representation of [[finite state machine (FSM)]]
- set operations on [[finite state machine (FSM)]]
- pumping lemma
- 


**Points:** /30



non-regularity of some language $L$:
- proof by contradiction per definition of *finite* state machine and pigeonhole principle

For the sake of contradiction, let's assume there exists a finite state machine $M=(\dots)$ s.t. $L(M)=M$. Let $x \in \Sigma$ and $x^i, i \in [|Q|+1]$ be 

where $|Q|$ states but $|Q|+1$ input words implies that there exists two input words that result in the same state. Then, per lemma 3.3.