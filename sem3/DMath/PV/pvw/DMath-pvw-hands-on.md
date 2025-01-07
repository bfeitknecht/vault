
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
$\widehat{\rho} = \varnothing$
$\rho^{2} = \{ (a, a), (b, b), (c,c), (a, c), (a, d), (c, a), (c, d), (d, a), (d c) \}$
$\rho^{*} = \rho \cup \rho^{2}$


# 2.3
1. false. consider $\sigma = \{ (a, a), (a, b) \}$ which is not reflexive but also not irreflexive.
2. true. assume $\sigma$ is irreflexive on a non-empty set $A$. it follows that $\exists a \in A : (a,a) \not\in \sigma \iff$ not reflexive.
3. false. consider $\sigma = \{ (a, a) \}$ which is symmetric and antisymmetric.


