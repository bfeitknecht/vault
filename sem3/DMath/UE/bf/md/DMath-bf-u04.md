
# 4.5
Prove or disprove the following statements.
![[DMath-e-u04.pdf#page=2&rect=79,580,522,656|DMath-e-u04, p.2]]

## a)
![[DMath-e-u04.pdf#page=2&rect=105,706,520,722|DMath-e-u04, p.2]]

False. Let $A=B=C=\{ \varnothing \}$.
$$
\begin{align}
(A \cup(B \setminus C)) \cap (B \cap C) &= (\{ \varnothing \} \cup (\{ \varnothing \} \setminus \{ \varnothing \} ) \cap(\{ \varnothing \} \cap \{ \varnothing \}) &\text{(def. $\setminus$, def. $\cap$)} \\
&= (\{ \varnothing \} \cup \varnothing) \cap \{ \varnothing \} &\text{(def. $\cup$, def. $\cap$)} \\
&= \{  \varnothing \} \neq \varnothing &\square
\end{align}
$$


## b)
![[DMath-e-u04.pdf#page=2&rect=107,685,521,700|DMath-e-u04, p.2]]

True. Let $A= \{ a, ab, abc \}$, $B=\{ ab, abc \}$ and $C=\{ abc \}$.
$$
\begin{align}
A \cap (B \setminus C) &= \{ x \mid x \in A \land x \in \{ B \setminus C \} \} \\
&= \{ x \mid x \in A \land x \in \{ y \in B \mid y \not\in C \} \} \\
&= \{ x \mid x \in A \land x \in B \land \neg(x \in B \land x \in C) \} \\
\end{align}
$$
$$
\begin{align}

\end{align}
$$

## c)
![[DMath-e-u04.pdf#page=2&rect=107,661,523,680|DMath-e-u04, p.2]]

True. We prove this by induction for all $n \in \mathbb{N}$, where $n = |A| + |B|$.

**Base Case**
$n=0$

$$
\begin{align}
|\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| &= |\mathcal{P}(\{ \varnothing \} \times \{ \varnothing \})| &\text{(def. $\mathcal{P}(\cdot)$, def. $\times$)} \\
&= |\mathcal{P}(\{ \varnothing \})| &\text{(def. $\mathcal{P}(\cdot)$)} \\
&= |\{ \varnothing, \{ \varnothing \}\}| &\text{(def. $|\cdot|$)}\\
&= 2 &\text{\contradiction}
\end{align}
$$




**Induction Hypothesis**
$n=k$


**Induction Step**
$n=k+1$

$$
\begin{align}
a = b
\end{align}
$$


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
