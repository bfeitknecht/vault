
![[sem3/A&D/PV/extra/pvw/AuD-pvw-script-HS22.pdf#page=11&rect=116,237,562,298|AuD-pvw-script-HS22, p.11]]
Using induction, we prove this for all $k \in \mathbb{N}_{+}$.

**b.c.**
Let $n = 1$. Then $\sum_{i=1}^{k=1}(2i - 1) = 1 = 1^{2} = 1$.
$\square$

**i.h**
Let $n = k \in \mathbb{N}_{\geq 1}$ be arbitrary. Then assume that the following holds. $\sum_{i = 1}^{k} (2i - 1) = k^{2}$.

**i.s.**
Let $n = k+1$. Then $\sum_{i=1}^{k+1} (2i- 1) = \sum_{i=1}^{k}(2i - 1)  + (2(k+1) - 1) \overset{ \text{i.h.} }{ = } k^{2} + 2k + 1 = (k+1)^{2}$.
$\square$

___

![[sem3/A&D/PV/extra/pvw/AuD-pvw-script-HS22.pdf#page=11&rect=116,215,562,236|AuD-pvw-script-HS22, p.11]]
**b.c.**
Let $n = 0$. Since $0^{3} + 2(0) = 0 \equiv_{3} 0$, the base case holds.
$\square$

**i.h.**
Let $n = k \in \mathbb{N}_{\geq0}$ be arbitrary. Then assume $k^{3} + 2k \equiv_{3} 0$.

**i.s.**
Let $n = k+1$. Then computation yields the following. 
$$
\begin{align}
(k+1)^{3} + 2(k+1) &= (k+1) (k^{2} + 2k + 1) + 2k + 2 \\
&= k^{3} + 2k^{2} +k + k^{2} + 2k + 1 + 2k + 2 \\
&= k^{3} + 3k^{2} + 5k + 3 \\
&\overset{ \text{i.h.} }{ \equiv_{3} } 3k^{2} + 3k + 3 = 3(k^{2} + k + 1) \\
&\equiv_{3} 0
\end{align}
$$
$\square$

