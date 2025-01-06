
# 1.3
$A = \{ \varnothing, \{ \varnothing \}, \{ \varnothing, \{ \varnothing \} \} \}, B = \{ \varnothing, \{ \varnothing \} \}$
$A \cup B = A$
$A \cap B = B$
$\mathcal{P}(B) = \{ \varnothing, \{ \varnothing \}, \{ \{ \varnothing \} \}, \{ \varnothing, \{  \varnothing \} \} \}$
$A - \mathcal{P}(B) = \varnothing$
$B \times \mathcal{P}(\varnothing) = B \times \{ \varnothing \} = \{ (\varnothing, \varnothing), (\{ \varnothing \}, \varnothing) \}$

# 1.4
$\mathcal{P}(A) = \mathcal{P}(B) \implies A = B$

Assume $\mathcal{P}(A) = \mathcal{P}(B)$ and $A \neq B$. From the latter follows that $\exists x \in A. x \not\in B$. By assumption and the definition of power set, it holds that $\{ x \} \in \mathcal{P}(A), \mathcal{P}(B)$. Contradiction, $\{ x \} \in \mathcal{P}(B) \implies x \in B$.

