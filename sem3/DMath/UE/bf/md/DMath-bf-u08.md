
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

The described homomorphism is surjective by definition $\mathrm{i.}$ of the carrier set $G$, since $\psi(H \times K) = \{ h * k \mid h \in H, k \in K \} = G$. 


Additionally it's injective, which is proven by contradiction. Assume there exists $(h,k), (h', k') \in H \times K$ with $(h,k) \neq (h', k')$ such that $\psi(h,k) = \psi(h', k')$. Case distinction. h1 == h2 and k1 != k2 

injective :
$$
\psi(h, k) = \psi(h', k') \implies (h, k) = (h', k')
$$



But the intersection is $H \cap K = \{ e \}$. Contradiction.


![[dmath-script-hs24.pdf#page=111&rect=35,432,390,505&color=01 yellow|dmath-script-hs24, p.101]]

![[dmath-script-hs24.pdf#page=109&rect=35,234,388,314&color=01 yellow|dmath-script-hs24, p.99]]

![[dmath-script-hs24.pdf#page=110&rect=36,412,390,493&color=06 yellow|dmath-script-hs24, p.100]]




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




prove isomorphism is trasitive per equivalence relation

show that Z15 contains two subgroups isomorphic to Z2, Z4 such that the intersection of their carrier is only the neutral element and the underlying group carrier can be constructed from them

1 11
1 2 4 8


1 2 4 7 8 11 14

7 = 2 . 11 mod 15
14 = 4 . 11 mod 15
13 = 8 . 11 mod 15

