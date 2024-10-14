
# 4.5
Prove or disprove the following statements.
![[DMath-e-u04.pdf#page=2&rect=79,580,522,656|DMath-e-u04, p.2]]
t
## a)
![[DMath-e-u04.pdf#page=2&rect=105,706,520,722|DMath-e-u04, p.2]]


## b)
![[DMath-e-u04.pdf#page=2&rect=107,685,521,700|DMath-e-u04, p.2]]


## c)
![[DMath-e-u04.pdf#page=2&rect=107,661,523,680|DMath-e-u04, p.2]]

True. We prove this by induction for any $n \in \mathbb{N}$, where $n = |A| + |B|$.

**Base Case**
$n\leftarrow k=0$

True. Let $A=B=\varnothing$ be the empty set, which is the set with the smallest cardinality. For the sake of contradiction, assume that $|\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| < 2$.
$$
\begin{align}
|\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| &= |\mathcal{P}(\{ \varnothing \} \times \{ \varnothing \})| &\text{(def. $\mathcal{P}(\cdot)$, def. $\times$)} \\
&= |\mathcal{P}(\{ \varnothing \})| &\text{(def. $\mathcal{P}(\cdot)$)} \\
&= |\{ \varnothing, \{ \varnothing \}\}| &\text{(def. $|\cdot|$)}\\
&= 2 &\text{\contradiction}
\end{align}
$$
This is a contradiction, hence the claim follows.
$\square$
