
# 3.2
![[DMath-e-u03.pdf#page=1&rect=76,280,521,364|DMath-e-u03, p.1]]

## i)
![[DMath-e-u03.pdf#page=1&rect=106,253,522,270|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x \big( ((x \mid n) \land (x \mid m)) \to x \mid n+m \big)
\end{align}
$$
## ii)
![[DMath-e-u03.pdf#page=1&rect=106,231,523,248|DMath-e-u03, p.1]]

$$
\begin{align}
\forall x( \texttt{prime}(x) \to ((1 \mid x) \wedge (x \mid x)))
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
\forall x \big( \texttt{prime}(x) \to ((x \mid n \cdot m) ↔ ((x \mid n) \vee( x \mid m))) \big)
\end{align}
$$

# 3.8
![[DMath-e-u03.pdf#page=3&rect=77,576,525,687|DMath-e-u03, p.3]]

Let $S$ be the statement to prove, written in predicate logic $S \overset{ \text{def.} }{ \iff } \forall n \big( (n \mid m) \wedge (n \mid (m+1)) \to n=1 \big)$.





%%%%%%%%%%%%%%%%%%%%








Let $S$ be the left hand side of the statement, written as a formula in predicate logic $S \overset{ \text{def.} }{ \iff } \exists n \big(n \mid m \wedge n \mid (m+1)\big)$ and let $T$ be the right hand side, $T \overset{ \text{def.} }{ \iff } n=1$. 
Let $I$ be the statement to prove, $S \implies T$. From the script we know that $I$ is false if and only if $S$ is true and $T$ is false.

For the sake of contradiction, let's assume that is the case, i.e. $S$ is true and $T$ is false.
$$
\begin{align}
S &\overset{ \text{def.} }{ \iff } \exists n \big( (n \mid m) \wedge (n \mid (m+1)) \big) &\text{(definition of $\texttt{divides}$)} \\
&\overset{ \cdot }{ \iff } \exists m \exists k \exists l( k\cdot n=m \wedge l\cdot n=m+1) &\text{()} \\
&\overset{ \cdot }{ \iff } \exists m \exists k \exists l( k\cdot n=m \wedge l\cdot n=(k\cdot n)+1) &\text{()} \\
\end{align}
$$


n divides two adjacent numbers but n is not 1

n divides m and n divides m plus one implies n is equal to one


$\forall n \exists m(n\cdot m=1 \to n=1)$
The statement S =⇒ T is false if S is true and T is false, and in all other three cases, S =⇒ T is true.