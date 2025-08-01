
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

True. We prove this by a series of equivalence transformations. We note that an element not being in the intersection of sets is logical consequence of the element not being in any one of the sets, i.e. $x \not\in C \vDash x \not\in (A \cap B \cap C)$. We will refer to this fact by $1$.
$$
\begin{align}
A \cap (B \setminus C) &= \{ x \mid x \in A \land x \not\in(B \setminus C) \} &\text{(def. $\setminus$,)} \\
&= \{ x \mid x \in A \land x \in B \land x \not\in C \} &\text{(1, rearrange)} \\
&= \{ x \in A \land x \in B \mid x \not\in((A \cap B) \cap C) \} &\text{(def. $\cap$)} \\
&= \{ x \in (A \cap B) \mid x \not\in ((A \cap B) \cap C) \} &\text{(def. $\setminus$)} \\
&= (A \cap B) \setminus ((A \cap B)\cap C) &\square
\end{align}
$$

Thus, we have shown the equivalence of the two sets.


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

For the general case, we write the following, which holds since $k, l \geq 0$ for any finite sets $A, B$.
$$
\begin{align}
|\mathcal{P}(\mathcal{P}(A) \times \mathcal{P}(B))| &= |\mathcal{P}(C)| &\text{(def. $C$)} \\
&= 2^{|C|} &\text{(def. $\mathcal{P}(\cdot)$)} \\
&= 2^{2^{k+l}} \geq 2 &\square
\end{align}
$$
