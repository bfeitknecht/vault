

# 12.6		Semantics of Predicate Logic
Prove the following statements of predicate logic (definition 6.36.). Do not use other results from the lecture notes.

## a) ![[DMath-e-u12.pdf#page=2&rect=105,314,521,333|DMath-e-u12, p.2]]

Let $F' = \forall y P(x, y)$. Let $F = \exists x F'$ and $G = \exists s P(x, f(x))$. Let $\mathcal{A}$ be suitable structure for $F, G$.

Assume $\mathcal{A}(F) = 1$. 

$$
\begin{align}
\mathcal{A} (F) = 1 \\
 \\
 \\
\mathcal{A}_{[x \to u][y \to v]}(F) \therefore f(u) = v
\end{align}
$$

## b) ![[DMath-e-u12.pdf#page=2&rect=106,297,522,314|DMath-e-u12, p.2]]


Let $F = \lnot(\forall x P(x))$ and $G = \exists x \lnot P(x)$. Let $\mathcal{A}$ be a suitable structure for both $F, G$. Then we show that if $\mathcal{A}$ is a model for $F$, then it's also a model for $G$.

Assume $\mathcal{A}(F) = 1$. Let $F' = \forall x P(x)$. Then it holds that $F = \lnot F'$.
$$
\begin{align}
\mathcal{A}(F) = 1 &\overset{ \ . }{ \iff } \mathcal{A}(\lnot F') = 1 &\text{(def. $F$, sem. $\lnot$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(F') = 0 &\text{(sem. $\forall$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u]}(P(u)) = 0 &\text{(sem. $\lnot$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u]}(\lnot P(u)) = 1 &\text{(sem. $\exists$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(G) = 1 &\text{(def. $G$)} \\
\end{align}
$$
$\square$




![[dmath-script-hs24.pdf#page=151&rect=36,461,389,576|dmath-script-hs24, p.141]]
![[dmath-script-hs24.pdf#page=152&rect=35,446,390,517|dmath-script-hs24, p.142]]
![[dmath-script-hs24.pdf#page=168&rect=35,275,389,486|dmath-script-hs24, p.158]]
![[dmath-script-hs24.pdf#page=169&rect=35,407,389,434|dmath-script-hs24, p.159]]

![[dmath-script-hs24.pdf#page=170&rect=36,50,389,312|dmath-script-hs24, p.160]]
