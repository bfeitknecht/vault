
# 3.2
![[DMath-e-u03.pdf#page=1&rect=76,280,521,364|DMath-e-u03, p.1]]

## i)
![[DMath-e-u03.pdf#page=1&rect=106,253,522,270|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x \big( (x \mid n \land x \mid m) \to x \mid n+m \big)
\end{align}
$$
## ii)
![[DMath-e-u03.pdf#page=1&rect=106,231,523,248|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x \big( \texttt{prime}(x) \to (n \mid x \to (n =1 \vee n=x)) \big)
\end{align}
$$
## iii)
![[DMath-e-u03.pdf#page=1&rect=107,208,523,225|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x ( ((x \mid y) \wedge (y \mid x)) \to x = y = 1 )
\end{align}
$$

## iv)
![[DMath-e-u03.pdf#page=1&rect=107,172,524,204|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x \big( \texttt{prime}(x) \to ((x \mid n \cdot m) ↔ (x \mid n \vee x \mid m)) \big)
\end{align}
$$

<div class="page-break" style="page-break-before: always;"></div>

# 3.8
![[DMath-e-u03.pdf#page=3&rect=77,576,525,687|DMath-e-u03, p.3]]

Let $I \overset{ \text{def.} }{ \iff } S \to T$ be the statement to prove, where $S \overset{ \text{def.} }{ \iff } (n \mid m) \wedge (n \mid m+1)$ and $T \overset{ \text{def.} }{ \iff } n=1$. Namely $I$ states, that for arbitrary $n, m \in \mathbb{N}$, if $n$ divides $m$ and $m+1$, then $n$ must be equal to one.

For the sake of contradiction, let's assume $I$ is false, i.e. $\neg (S \to T) \equiv S \wedge \neg T$. In words this equates to the assumption, that $n$ divides $m$ and $m+1$, for some arbitrary $n, m \in \mathbb{N}$ but $n\neq1$.
$$
\begin{align}
S &\overset{ \cdot }{ \iff } (n \mid m) \wedge (n \mid m+1) &\text{(definition of $\texttt{divides}$)} \\
&\overset{ \cdot }{ \iff } \exists k,l(k\cdot n=m \wedge l\cdot n=m+1) &\text{(substitute $m$)} \\
&\overset{ \cdot }{ \implies } \exists k,l(l\cdot n = (k\cdot n)+1) &\text{(rearrange)} \\
&\overset{ \cdot }{ \iff } \exists k,l((l\cdot n) -  (k\cdot n) = 1) &\text{(rearrange)} \\
&\overset{ \cdot }{ \iff } \exists k,l((l-k) \cdot n = 1) &\text{(definition of $\texttt{divides}$)} \\
&\overset{ \cdot }{ \iff } n \mid 1 &\text{(3.2 $\mathbf{iii}$.)} \\
&\overset{ \cdot }{ \implies } n = 1 &\text{(contradiction! $\lightning$)} \\
\end{align}
$$

Hence we have arrived at a contradiction, since we assumed $n\neq1$, and the statement $I$ is proven.
$\square$
