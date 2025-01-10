
# 1.3
$A = \{ \varnothing, \{ \varnothing \}, \{ \varnothing, \{ \varnothing \} \} \}, B = \{ \varnothing, \{ \varnothing \} \}$
$A \cup B = A$
$A \cap B = B$
$\mathcal{P}(B) = \{ \varnothing, \{ \varnothing \}, \{ \{ \varnothing \} \}, \{ \varnothing, \{  \varnothing \} \} \}$
$A - \mathcal{P}(B) = \varnothing$
$B \times \mathcal{P}(\varnothing) = B \times \{ \varnothing \} = \{ (\varnothing, \varnothing), (\{ \varnothing \}, \varnothing) \}$


# 1.4
Prove $\mathcal{P}(A) = \mathcal{P}(B) \implies A = B$.

Assume $\mathcal{P}(A) = \mathcal{P}(B)$ and $A \neq B$. From the latter follows that $\exists x \in A. x \not\in B$. By assumption and the definition of power set, it holds that $\{ x \} \in \mathcal{P}(A), \mathcal{P}(B)$. Contradiction, $\{ x \} \in \mathcal{P}(B) \implies x \in B$.


# 2.1
irreflexive +
symmetric +


# 2.2
$\widehat{\rho} = \rho$
$\rho^{2} = \{ (a, a), (b, b), (c,c), (a, c), (a, d), (c, a), (c, d), (d, a), (d c) \}$
$\rho^{*} = \rho \cup \rho^{2}$


# 2.3
1. False. Consider $\sigma = \{ (a, a), (a, b) \}$ which is not reflexive but also not irreflexive.
2. True. Assume $\sigma$ is irreflexive on a non-empty set $A$. it follows that $\exists a \in A : (a,a) \not\in \sigma \iff$ not reflexive.
3. False. Consider $\sigma = \{ (a, a) \}$ which is symmetric and antisymmetric.


# 3.1
False. Consider $X, Y = \mathbb{N}$ and $f(x) = \begin{cases} x, & \text{if } x \equiv_{2} 0 \\x+1, &\text{else}\end{cases}$. Let $A = X$ and $B = [1]_{\equiv_{2}}$. Then $f(A - B) = [0]_{\equiv_{2}} \neq f(A) - f(B) = \varnothing$. Contradiction. $\square$


# 4.3
Prove or disprove, $A = \{ f: \mathbb{N} \to \mathbb{N} \mid \forall n \in \mathbb{N} : f(n) \geq f(n+1)\}$ is countable.

True. The given set $A$ describes the set of all monotonically decreasing functions over the natural numbers.



___


# 1.3

a)
3, 5, 6, 7, 10, 11, 12, 14

b)
1, 3, 7, 9, 11, 13, 17, 19

c)
only if $\mathrm{ord}((g_{1}, g_{2})) = \mathrm{lcm}(\mathrm{ord}(g_{1}), \mathrm{ord}(g_{2}))$

d)
dito


___


Assume $\Pi_{1}, \Pi_{2}$ are not complete, i.e. both contain a statement $s \in \mathcal{S} : \tau(s) = 1$ but $\forall p \in \mathcal{P} : \phi(s, p) = 0$. Let $s', s''$ be those statements. Now let $s''' = (s', s'') \in \mathcal{S}_{1} \times \mathcal{S}_{2}$. Per definition of $\Pi_{3}$ it holds that $\tau_{3}(s''') = 1$, since it's given that $\tau_{1}(s') = \tau_{2}(s'') = 1$. As $\Pi_{1}, \Pi_{2}$ are incomplete there exists no $p''' = (p', p'') \in \mathcal{P}_{1} \times \mathcal{P}_{2}$ such that $\phi_{3}(s''', p''') = 1$.
$\square$


