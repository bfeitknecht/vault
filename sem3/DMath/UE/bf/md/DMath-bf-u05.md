
Basil Feitknecht, 23-922-099

# 5.5
Prove or disprove the following claims.

## a)
![[DMath-e-u05.pdf#page=2&rect=107,714,520,729|DMath-e-u05, p.2]]

False. The implication that if a relation $\rho$ on a set $A$ is symmetric then it’s composition with itself $\rho^{2}$ is also symmetric trivially holds. However, the opposite direction doesn‘t hold. 

For the sake of contradiction, let us assume that if $\rho^{2}$ is symmetric, then also $\rho$ is symmetric. Let $\rho^{2}=\varnothing$, which is symmetric by definition 3.15.

Let $a, b \in A$. We present as counterexample the relation on $A$ defined as $\rho = \{ (a, b) \}$ and thus arrive at a contradiction, since $\rho$ is not symmetric.
$\square$

## b)
![[DMath-e-u05.pdf#page=2&rect=106,680,519,711|DMath-e-u05, p.2]]

True. By the symmetry of the relation $\rho$ on $A$ (definition 3.15) we have $a \mathrel{\rho} b \iff b \mathrel{\rho} a$ for all $a, b \in A$. Then by antisymmetry (definition 3.16), we have $a \mathrel{\rho} b \land b \mathrel{\rho} a \implies a=b$. We note that the left hand side of the implication is exactly given by symmetry of the relation, i.e. $\rho = \{ (a, a) \mid \forall a \in A \} = \mathsf{id}_{A}$.
$\square$

## c)
![[DMath-e-u05.pdf#page=2&rect=106,613,519,679|DMath-e-u05, p.2]]

True. Let $a, b, c \in \mathbb{Z}$. Then we can denote the given relations using set builder notation as $\rho_{1} = \{ (a,b) \mid a+1=b \}$ and $\rho_{2} = \{ (a, b) \mid a \equiv_{2} b\}$. Thus the relation defined as their union is given by $\rho = \rho_{1} \cup \rho_{2} = \{ (a, b) \mid (a, b) \in \rho_{1} \lor (a,b) \in \rho_{2} \}$.

We will now show that $\rho^{2}=\mathbb{Z} \times \mathbb{Z}$ by a series of equivalence transformations.
$$
\begin{align}
\rho^{2} &= \{ (a, c) \mid \exists b \in \mathbb{Z} : (a, b), (b, c) \in \rho \} &\text{(def. $\rho$)} \\
&= \{  (a, c) \mid \exists b \in \mathbb{Z} : (a,b), (b,c) \in \rho_{1} \lor (a, b), (b, c) \in \rho_{2}\} &\text{(def. $\rho_{1}, \rho_{2}$)} \\
&= \{ (a, c) \mid \exists b \in \mathbb{Z}: (a+1=b \land b+1=c) \lor(a\equiv_{2}b \land b\equiv_{2}c) \} &\text{(def. $\mathbb{Z}$)} \\
&= \{ (a, c) \mid \top \} = \mathbb{Z} \times \mathbb{Z} &\square
\end{align}
$$


First, we will show that $\rho^{2} \subseteq$

