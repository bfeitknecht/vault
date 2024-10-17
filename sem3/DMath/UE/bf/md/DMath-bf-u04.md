
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

True. Let $A, B$, be finite sets where $|A|=k$ and $|B|=l$. Let's construct a set $C=\mathcal{P}(A) \times \mathcal{P}(B)$ to denote the cartesian product of their power sets. We note that its cardinality, by definition of the power set (def. 3.7) is $|C|=2^{k} \cdot 2^{l} = 2^{k+l}$.

Now, let $A, B= \varnothing$ be the empty set, which has cardinality zero. This implies (both ways) that the constructed set $C$ has cardinality one $|C|=2^{0}=1$. Then the cardinality of its power set $|\mathcal{P}(C)|=2^{|C|}=2^{1}$ is exactly two. Since $A, B$ were chosen as the finite set with smallest cardinality, $|\mathcal{P}(C)| \geq 2$ for any $A, B$.
$$
\begin{align}
A, B = \varnothing &\overset{ \cdot }{ \iff } |C|=1 \\
&\overset{ \cdot }{ \iff } |\mathcal{P}(C)| = 2
\end{align}
$$

For the general case, we write the following, which holds since $k, l \geq 0$ for all 
$$
\begin{align}
|\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| &= |\mathcal{P}(C)| &\text{(def. $C$)} \\
&= 2^{|C|} &\text{(def. $\mathcal{P}(\cdot)$)} \\
&= 2^{2^{k+l}} \geq 2
\end{align}
$$



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
