
# 8.5 Inner Direct Products

## a) ![[DMath-e-u08.pdf#page=2&rect=105,460,518,547|DMath-e-u08, p.2]]

We want to show that $G \simeq H \times K$. To do this, we will construct a group homomorphism, $\psi :H \times K \to G$ and show that it is a bijection.

Let this function be defined by $\psi(h, k) = h * k$, for all $(h,k) \in H \times K$. Per definition 5.9 of the direct product of groups and definition 5.11 of subgroups, we have the following.
$$
\begin{align}
\langle H \times K; \star \rangle &= \langle H; * \rangle \times \langle K; * \rangle, \\
(h_{1}, k_{1}) \star (h_{2}, k_{2}) &= (h_{1} * h_{2}, k_{1} * k_{2}) \in H \times K
\end{align}
$$

Then, per commutativity of the group $G$, the equality below holds for all $(h_{1}, k_{1}), (h_{2}, k_{2}) \in H \times K$.
$$
\begin{align}
\psi\big( (h_{1}, k_{1}) \star (h_{2}, k_{2}) \big) &= \psi\big( h_{1}*h_{2}, k_{1}*k_{2} \big) \\
&= \psi(h_{1}, k_{1}) * \psi(h_{2}, k_{2})
\end{align}
$$

Thus per definition 5.10, $\psi$ is a group homomorphism from $H \times K$ to $G$.

By definition $\mathrm{i.}$ of the carrier set $G$, the function $\psi$ is surjective since $\psi(H \times K) = \{ h * k \mid h \in H, k \in K \} = G$. 

Now assume that there exists $(h,k), (h', k') \in H \times K$ such that $\psi(h,k) = \psi(h', k')$. Then we prove that $\psi$ is injective below.
$$
\begin{align}
\psi(h,k) = \psi(h', k') &\overset{ \cdot }{ \implies } \psi(h,k) * \widehat\psi(h', k') = \psi(h',k') * \widehat\psi(h',k') &\text{(def. $e$)} \\
&\overset{ \cdot }{ \implies } \psi(h,k) * \widehat{\psi}(h',k') = e &\text{(inverse of $h * k$)} \\
&\overset{ \cdot }{ \implies } \widehat\psi(h',k') = \widehat\psi(h,k) &\text{(uniqueness of inverse)} \\
&\overset{ \cdot }{ \implies } (h,k) = (h',k') &\text{(def. injection)}
\end{align}
$$

Since the described homomorphism $\psi$ from $H \times K$ to $G$ is a bijection, it's proven that the two groups are isomorphic.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## b) ![[DMath-e-u08.pdf#page=2&rect=105,428,519,459|DMath-e-u08, p.2]]
We need to prove, that $\langle \mathbb{Z}^{*}_{15}, \odot_{15} \rangle \simeq \mathbb{Z}_{2} \times \mathbb{Z}_{4}$. First, let's observe the elements of these groups.
$$
\begin{align}
\mathbb{Z}^{*}_{15} &= \{ 1, 2, 4, 7, 8, 11, 13, 14 \} \\ \\

\mathbb{Z}_{2} &= \{ 0,1 \} \\
\mathbb{Z}_{4} &= \{ 0, 1, 2, 3 \} \\ \\

\mathbb{Z}_{2} \times \mathbb{Z}_{4} &= \left\{\begin{matrix}
00, & 01, & 02, & 03 \\
10, & 11, & 12, & 13
\end{matrix}\right\}
\end{align}
$$

We notice that the group $\mathbb{Z}^{*}_{15}$ contains two subgroups $H = \{ 1, 11 \}$ and $K =\{ 1, 2, 4, 8 \}$. Furthermore, we have the following. ==more proof needed?==
$$
\begin{align}
\mathbb{Z}^{*}_{15} &= \{ h \odot_{15} k \mid h \in H, k \in K \} \\
H \cap K &= \{ 1 \} = \{ e \}
\end{align}
$$

Then per subtask $(a)$ we know that the underlying group is isomorphic to its inner direct product with $H, K$, i.e. $\mathbb{Z}^{*}_{15} \simeq H \times K$. 


prove isomorphism is transitive per equivalence relation

show that Z15 contains two subgroups isomorphic to Z2, Z4 such that the intersection of their carrier is only the neutral element and the underlying group carrier can be constructed from them

1 11
1 2 4 8




1 2 4 7 8 11 14

7 = 2 . 11 mod 15
14 = 4 . 11 mod 15
13 = 8 . 11 mod 15

