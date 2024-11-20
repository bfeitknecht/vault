
# 9.5 More Elementary Properties of Rings

Let $\langle R; +, -,0, \cdot,1 \rangle$ be a ring, and let $a \in R$ and $b \in R$. Prove the following statements.

## a) ![[DMath-e-u09.pdf#page=2&rect=105,702,517,731|DMath-e-u09, p.2]]
False. Consider as counterexample $\mathbb{Z}_{4}$. Let $a=0$ and $b=2$. Then, for $m=2, n=3$ we have $\gcd(n,m)=1$ and $a^{m} \equiv_{4} b^{m}$ as well as $a^{n} \equiv_{4} b^{n}$. However $a \neq b$. This only works in an integral domain, where there are no zero divisors.
$\square$


## b) ![[DMath-e-u09.pdf#page=2&rect=105,668,518,698|DMath-e-u09, p.2]]
Let $y=1-ab$ be a unit in $R$ with its multiplicative inverse $x = (1-ab)^{-1}$. Thus it holds that $(1-ab)x = x(1-ab) = 1$. Then we denote $y' = 1-ba$. The following statement is to prove.
$$
y \in R^{*} \implies y' \in R^{*}
$$

Consider the element $x'=1+bxa \in R$. We demonstrate that $y'x' = x'y' = 1$. First, let's consider $y'x'$.
$$
\begin{align}
y'x' = (1 - ba)(1 + bxa) &\iff y'x' = 1 + bxa - ba - babxa &\text{(distributivity, associativity)} \\
&\iff y'x' = 1 - ba + bxa - babxa &\text{(left distributivity)} \\
&\iff y'x' = 1 - ba + b(xa - abxa) &\text{(right distributivity)} \\
&\iff y'x' = 1 - ba + b(x - abx)a &\text{(dito)} \\
&\iff y'x' = 1 - ba + b((1 - ab)x)a &\text{(multiplicative inverse)} \\
&\iff y'x' = 1 - ba + ba &\text{(additive inverse)} \\
& \iff y'x' = 1
\end{align}
$$

Similarly, we cover the case $x'y'$ below.
$$
\begin{align}
x'y' = (1 + bxa)(1-ba) &\iff x'y' = 1 - ba + bxa - bxaba &\text{(distributivity, right distributivity)} \\
&\iff x'y' = 1 - ba + (bx - bxab)a &\text{(left distributivity)} \\
&\iff x'y' = 1 - ba + b(x - xab)a &\text{(dito)} \\
&\iff x'y' = 1 - ba + b(x(1 - ab))a &\text{(multiplicative inverse)} \\
&\iff x'y' = 1 - ba + ba &\text{(additive inverse)} \\
&\iff x'y' = 1
\end{align}
$$

Thus, we have shown that $(1-ba)x' = x'(1-ba) = 1$, where $x'$ is the multiplicative inverse of $y'=1-ba$. Hence, $y' \in R^{*}$ is a unit, as was to be proven.
$\square$
