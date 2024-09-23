
A **predicate** is a [[arity|k-ary]] [[function]] on some [[empty set|non-empty]] set $U$ as the **universe**.
![[dmath-script-hs24.pdf#page=35&rect=35,197,346,214|dmath-script-hs24, p.25]]

# Examples
![[dmath-script-hs24.pdf#page=35&rect=31,97,394,159|dmath-script-hs24, p.25]]
Additionally,
$$
\begin{align}
\text{less(x, y)} &= \begin{cases}
1, & \text{if x<y} \\
0, & \text{else}
\end{cases} \\
\text{equal(x, y)} &= \begin{cases}
1, & \text{if x=y} \\
0, &\text{else}
\end{cases} \\

\end{align}
$$
- less(x, y) is true when x\<y
- equal(x, y) is true when x=y
- prime(x) is true when x is prime
- divides(x, y) def.: $\exists$ u, equal(mult(x, u), y)