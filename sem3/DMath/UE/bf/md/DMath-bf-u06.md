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

Now we show that such a function $f_{g}$ is in fact in $A_{l}$.
$$
\begin{align}
\exists n \in \mathbb{N},\ \overbrace{ n(l+1) \leq k < (n+1)(l+1) }^{ \text{(a)} }
& \overset{ \cdot }{ \implies } \sum_{i=0}^{k}f(i) \leq n+1 & \text{(definition $f_{g}$), (a)} \\
& \overset{ \cdot }{ \implies } \sum_{i=0}^{k}f(i) \leq \frac{k}{l}+1 & \text{(definition $A_{l}$)} \\
& \overset{ \cdot }{ \implies } f_{g} \in A_{l}
\end{align}
$$

Then we must show that $\psi$ is injective.
$$
\begin{align}
g_{1} \neq g_{2} & \overset{ \cdot }{ \implies } \exists n  \in \mathbb{N},\ g_{1}(n) \neq g_{2}(n) & \text{(definition $f_{g}$)}\\
& \overset{ \cdot }{ \implies } f_{g_{1}}\big(n(l+1)\big) \neq f_{g_{2}}\big(n(l+1)\big) & \text{(definition $\psi$)} \\
& \overset{ \cdot }{ \implies } \psi(g_{1}) \neq \psi(g_{2}) & \text{(definition injective)} \\
& \overset{ \cdot }{ \implies } \psi \text{ injective}
\end{align}
$$

Thus we have constructed an injective function from an uncountable set into $A_{l}$ and hence shown that it is uncountable.
$\square$
