
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

<div class="page-break" style="page-break-before: always;"></div>

## c)
![[DMath-e-u05.pdf#page=2&rect=106,613,519,679|DMath-e-u05, p.2]]

True. We can denote the given relations using set builder notation. The first one is $\rho_{1} = \{ (a,b) \mid a,b \in \mathbb{Z} : b=a+1 \}$ and the second one $\rho_{2} = \{ (c, d) \mid c,d \in \mathbb{Z} : c \equiv_{2} d\}$.
Then their union is $\rho = \rho_{1} \cup \rho_{2} = \{ (x, y) \mid x,y \in \mathbb{Z} : x \mathrel{\rho_{1}} y \lor x \mathrel{\rho_{2}} y \}$.
Furthermore, we have $\rho^{2} = \{ (x,z) \mid x,z \in \mathbb{Z}, \exists y \in \mathbb{Z} : x \mathrel\rho y \land y \mathrel \rho z \}$ 


First, we will show that $\rho^{2} \subseteq \mathbb{Z} \times \mathbb{Z}$. 
$$
\begin{align}
\rho^{2} \subseteq \mathbb{Z} \times \mathbb{Z} &\overset{ \cdot }{ \iff } \forall (x,z) \big( (x,z) \in \rho^{2} \to (x,z) \in \mathbb{Z} \times \mathbb{Z} \big) &\text{(def. $\subseteq$)} \\
&\overset{ \cdot }{ \iff } \forall (x,z) \big( (x,z) \not\in \rho^{2} \lor (x,z) \in \mathbb{Z} \times \mathbb{Z} \big) &\text{(def. $\times$)} \\
&\overset{ \cdot }{ \iff } \top &\square
\end{align}
$$

Now we will show that $\mathbb{Z} \times \mathbb{Z} \subseteq \rho^{2}$. For this we will use fact $(1)$ that $F \implies F \lor G$.
$$
\begin{align}
\mathbb{Z} \times \mathbb{Z} \subseteq \rho^{2} &\overset{ \cdot }{ \iff } \forall (x,z) \big( (x,z) \in \mathbb{Z} \times \mathbb{Z} \to (x,z) \in \rho^{2} \big) &\text{(def. $\subseteq$)} \\
&\overset{ \cdot }{ \iff } \forall (x,z)\Big( \big((x,z) \not\in \mathbb{Z} \times \mathbb{Z} \big) \lor (x,z) \in \rho^{2} \Big) &\text{(1)} \\
&\overset{ \cdot }{ \iff } \forall (x,z)\big( (x,z) \in \rho^{2} \big) &\text{(def. $\rho^{2}$)} \\
&\overset{ \cdot }{ \iff } \forall (x,z)\big( (x,z) \in \{ (x,z) \mid x,z \in \mathbb{Z}, \exists y \in \mathbb{Z} : x \mathrel\rho y \land y \mathrel \rho z \} \big) &\text{(def. $\rho$)} \\
&\overset{ \cdot }{ \iff } \forall (x,z)\big( (x,z) \in \{ (x,z) \mid x,z \in \mathbb{Z}, \top\} \big) &\text{(tautology)} \\
&\overset{ \cdot }{ \iff } \forall (x,z)\big( (x,z) \in \{ (x,z) \mid x,z \in \mathbb{Z} \} \big) &\square
\end{align}
$$

Thus we have shown that $\rho^{2}= \mathbb{Z} \times \mathbb{Z}$.
$\square$
