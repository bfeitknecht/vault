Basil Feitknecht, 23-922-099


# 6.5
Prove that for all $l\in \mathbb{N}$ with $l\geq1$ the set $A_{l}$ is uncountable.
$$
A_{l} = \left\{  f : \mathbb{N} \to \{ 0,1 \} \ \Bigg| \ \forall k\in \mathbb{N},\ \sum_{i=0}^{k}f(i) \leq \frac{k}{l}+1 \right\}
$$
**Hint:** For all $l \geq 1$ explicitly write an injection from a known uncountable set into $A_{l}$.


Let $A$ denote the set of all functions $g : \mathbb{N} \to \{ 0,1 \}$, which is uncountable per definition 3.23. To prove that $A_{l}$ is uncountable we will construct an injection into it. 

Let $\psi : A \to A_{l}$, denote the mapping $g \mapsto f_{g}$ of a function in $A$ to a function in $A_{l}$, where we define $f_{g}$ as follows.
$$
f_{g}(i) = \begin{cases}
g(n) & \text{if $\exists n \in \mathbb{N}$ s.t. }\  i=n(l+1) \\
0  & \text{else}
\end{cases}, \quad \forall i \in \mathbb{N}
$$

Now we show that any such function is in fact in $A_{l}$. Let $n(l+1) \leq k < (n+1)(l+1)$ for some $n \in \mathbb{N}$.

$$
\begin{align}
\exists n \in \mathbb{N},\ n(l+1) \leq k < (n+1)(l+1)  \\
 \\
 \\
& \overset{ \cdot }{ \implies } \sum_{i=0}^{k}f(i) \leq n+1 \\
& \overset{ \cdot }{ \implies } \sum_{i=0}^{k}f(i) \leq \frac{k}{l}+1
\end{align}
$$

 Per definition of $f_{g}$ we have at most $\sum_{i=0}^{k}f(i) \leq n+1$, which implies that the function fulfills the inequality constraint, since $n(l+1) \leq k \implies n+1 \leq \frac{k}{l}+1$. ==(?)==


Then we must show that $\psi$ is injective, i.e. for some $g_{1}, g_{2} \in A$ we have $g_{1} \neq g_{2} \implies \psi(g_{1}) \neq \psi(g_{2})$.
$$
\begin{align}
g_{1} \neq g_{2} & \overset{ \cdot }{ \implies } \exists n  \in \mathbb{N},\ g_{1}(n) \neq g_{2}(n) & \text{(definition of $f_{g}$)}\\
& \overset{ \cdot }{ \implies } f_{g_{1}}\big(n(l+1)\big) \neq f_{g_{2}}\big(n(l+1)\big) & \text{(definition of $\psi$)} \\
& \overset{ \cdot }{ \implies } \psi(g_{1}) \neq \psi(g_{2}) & \text{(definition injective)}
\end{align}
$$

Thus we have constructed an injective function from an uncountable set into $A_{l}$ and hence shown that it is uncountable itself.
$\square$
