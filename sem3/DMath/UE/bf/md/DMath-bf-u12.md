

# 12.6		Semantics of Predicate Logic
Prove the following statements of predicate logic (definition 6.36.). Do not use other results from the lecture notes.

## a) ![[DMath-e-u12.pdf#page=2&rect=105,314,521,333|DMath-e-u12, p.2]]

Let $F' = \forall y P(x, y)$. Let $F = \exists x F'$ and $G = \exists x P(x, f(x))$. Let $\mathcal{A}$ be suitable structure for $F, G$. Assume $\mathcal{A}(F) = 1$. 
$$
\begin{align}
\mathcal{A}(F) = 1 &\overset{ \ . }{ \iff } \mathcal{A}(\exists x F') = 1 &\text{(def. $F$, sem. $\exists$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u]}(F') = 1 \ \text{for some $u$ in $U^{\mathcal{A}}$} &\text{(sem. $\forall$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u][y \to v]}(P(x,y)) = 1 \ \text{for some $u$ in $U^{\mathcal{A}}$, for all $v$ in $U^{\mathcal{A}}$} &(f(u) = v) \\
&\overset{ \ \ . }{ \implies } \mathcal{A}_{[x \to u][y \to f(u)]}(P(x,y)) = 1 \ \text{for some $u$ in $U^{\mathcal{A}}$} &\text{(sem. $\exists$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[y \to f(x)]}(\exists x P(x,y)) = 1 &\text{(sub. $y$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(\exists x P(x,f(x))) = 1 &\text{(def. $G$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(G) = 1
\end{align}
$$
$\square$

## b) ![[DMath-e-u12.pdf#page=2&rect=106,297,522,314|DMath-e-u12, p.2]]


Let $F' = \forall x P(x)$. Then, let $F = \lnot F'$ and $G = \exists x \lnot P(x)$. Let $\mathcal{A}$ be a suitable structure for both $F, G$. Then we show that if $\mathcal{A}$ is a model for $F$, it's also a model for $G$. Assume $\mathcal{A}(F) = 1$.
$$
\begin{align}
\mathcal{A}(F) = 1 &\overset{ \ . }{ \iff } \mathcal{A}(\lnot F') = 1 &\text{(def. $F$, sem. $\lnot$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(F') = 0 &\text{(sem. $\forall$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u]}(P(x)) = 0 \ \text{for all $u$ in $U^{\mathcal{A}}$} &\text{(sem. $\lnot$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}_{[x \to u]}(\lnot P(x)) = 1 \ \text{for some $u$ in $U^{\mathcal{A}}$} &\text{(sem. $\exists$)} \\
&\overset{ \ \ . }{ \implies } \mathcal{A}(\exists x \lnot P(x)) = 1 &\text{(def. $G$)} \\
&\overset{ \ . }{ \iff } \mathcal{A}(G) = 1
\end{align}
$$
$\square$




%% 
![[dmath-script-hs24.pdf#page=151&rect=36,461,389,576|dmath-script-hs24, p.141]]
![[dmath-script-hs24.pdf#page=152&rect=35,446,390,517|dmath-script-hs24, p.142]]
![[dmath-script-hs24.pdf#page=168&rect=35,275,389,486|dmath-script-hs24, p.158]]
![[dmath-script-hs24.pdf#page=169&rect=35,407,389,434|dmath-script-hs24, p.159]]

![[dmath-script-hs24.pdf#page=170&rect=36,50,389,312|dmath-script-hs24, p.160]]
 %%