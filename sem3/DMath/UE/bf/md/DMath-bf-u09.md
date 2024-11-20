
# 9.5 More Elementary Properties of Rings

Let $\langle R; +, -,0, \cdot,1 \rangle$ be a ring, and let $a \in R$ and $b \in R$. Prove the following statements.

## a) ![[DMath-e-u09.pdf#page=2&rect=105,702,517,731|DMath-e-u09, p.2]]
False. Consider as counterexample $\mathbb{Z}_{4}$. Let $a=0$ and $b=2$. Then, for $m=2, n=3$ we have $\gcd(n,m)=1$ and $a^{m} \equiv_{4} b^{m}$ as well as $a^{n} \equiv_{4} b^{n}$. However $a \neq b$. This only works in an integral domain, where there are no zero divisors.
$\square$


## b) ![[DMath-e-u09.pdf#page=2&rect=105,668,518,698|DMath-e-u09, p.2]]
To prove is the following statement.
$$
1-ab \in R^{*} \implies 1-ba \in R^{*}
$$

Let $x=(1-ab)^{-1}$ be the multiplicative inverse of the unit $1-ab$.



correct arrows and equalities!!
$$
\begin{align}
x &= (1 - ab)^{-1} \implies \\
1 + bxa  &= 1  +  b \cdot (1 + ab)^{-1} \cdot a \implies \\
&= 1  +  \frac{b(1 + ab) \cdot a(1+ab)}{1+ab} \implies \\
&= \frac{(1 + ab)(1 + ba)}{1 + ab} \implies \\
1 + ba &= \frac{1 + bxa}{1+ab} - ab \\
\end{align}
$$