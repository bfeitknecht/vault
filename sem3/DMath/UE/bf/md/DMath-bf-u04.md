
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
// TODO !!

$$
\begin{align}
(A \cap B) \setminus ((A \cap B) \cap C) &= 
\end{align}
$$
$$
\begin{align}

\end{align}
$$

## c)
![[DMath-e-u04.pdf#page=2&rect=107,661,523,680|DMath-e-u04, p.2]]

True. Let $A, B$, be finite sets where $|A|=k$ and $|B|=l$. Let $C=\mathcal{P}(A) \times \mathcal{P}(B)$ denote the cartesian product of their power sets. We note that its cardinality is $|C|=2^{k} \cdot 2^{l} = 2^{k+l}$, by definition of the power set (def. 3.7).

Now, let $A, B= \varnothing$ be the empty set, which is the set with smallest cardinality, namely zero. We will prove by mathematical induction that $|\mathcal{P}(C)|\geq 2$, for all $n \in \mathbb{N}$, where $n=k+l$.


DIRECT PROOF

def. 3.7.


**Base Case**
$n=0$

Let $A=B=\varnothing$, thus $|A|=|B|=0$ and $n=k+l=0$.
$$
\begin{align}
|\mathcal{P}(C)| &= |\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| &\text{(def. $\mathcal{P}(\cdot)$)} \\
&=|\mathcal{P}(\{ \varnothing \} \times \{ \varnothing \})| &\text{(def. $\times$)} \\
&= |\mathcal{P}(\{ \varnothing \})| &\text{(def. $\mathcal{P}(\cdot)$)} \\
&= |\{ \varnothing, \{ \varnothing \}\}| &\text{(def. $|\cdot|$)}\\
&= 2
\end{align}
$$



**Induction Hypothesis**
$n=m$

Let $|A|=k$ and $|B|=l$ be arbitrary finite sets. 
$$
\begin{align}
|\mathcal{P}(C)| &= 2^{2^{m}}
\geq 2
\end{align}
$$

**Induction Step**
$n=m+1$

Let $C'=\mathcal{P}(A) \times \mathcal{P}(B')$ be the cartesian product between two sets, where w.l.o.g., $|A|=k$ and $|B'|=l+1$. Thus $|C'|=2^{m+1}$.

$$
\begin{align}
|\mathcal{P}(C')|
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
