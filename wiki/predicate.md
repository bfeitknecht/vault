
A **predicate** is a [[arity|k-ary]] [[function]] on some [[empty set|non-empty]] set $U$ as the **universe**.
![[dmath-script-hs24.pdf#page=35&rect=35,197,346,214|dmath-script-hs24, p.25]]

# Examples
![[dmath-script-hs24.pdf#page=35&rect=31,97,394,159|dmath-script-hs24, p.25]]
Additionally,
$$
\begin{align}
\text{less(x, y)} &= \begin{cases}
1, & \text{if x is less than y} \\
0, & \text{else}
\end{cases} \\
\text{equal(x, y)} &= \begin{cases}
1, & \text{if x is equal to y} \\
0, &\text{else}
\end{cases} \\
\text{divides(x, y)} &= \begin{cases}
1, & \exists u \in U : \text{equal(mult(x, u), y)} \\
0, & \text{else}
\end{cases}
\end{align}
$$
