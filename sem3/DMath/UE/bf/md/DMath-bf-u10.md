
# 10.5      Extension Fields ![[DMath-e-u10.pdf#page=1&rect=78,193,522,212|DMath-e-u10, p.1]]

## a) ![[DMath-e-u10.pdf#page=1&rect=105,178,522,193|DMath-e-u10, p.1]]

The algebra $\mathbb{Z}_{3}$ is a commutative ring, by example 5.34. Then, by theorem 5.21, if $R$ is a commutative ring, the extension $R[x]$ is also a commutative ring. Thus the structure $\mathbb{Z}_{3}[x]$ is a non-trivial commutative ring, since the additive and multiplicative identity are distinct, $\mathbf{0}\neq \mathbf{1}$.

Per lemma 5.35, for a ring $F[x]$, then $F[x]_{m(x)}$ is a ring with respect to addition and multiplication. Thus the algebra $\mathbb{Z}_{3}[x]_{x^{3}+2x^{2}+1}$ is a ring.

Finally, for a ring $F$ its extension field $F[x]_{m(x)}$ is a field if and only if $m(x)$ is irreducible, by theorem 5.37. Thus all that remains to show is that $m(x) = x^{3}+2x^{2}+1$ is irreducible in $\mathbb{Z}_{3}[x]$.



To do this, it follows from definition 5.28 and the fact that degrees of polynomials are added under multiplication. Hence, since the degree of the modulus polynomial is three $\deg(m(x))=3$, we prove that it has no monic polynomial divisors, i.e. $(x+\alpha) \not\mid x^{3}+2x^{2}+1$ holds for all $\alpha \in \mathbb{Z}_{3}$. The computation yields the following.
$$
\begin{align}
R_{x}(x^{3}+2x^{2}+1) &= 1 \\
R_{x+1}(x^{3}+2x^{2}+1) &= 2 \\
R_{x+2}(x^{3}+2x^{2}+1) &= 1
\end{align}
$$

Thus, $m(x) = x^{3}+2x^{2}+1$ is an irreducible polynomial in $\mathbb{Z}_{2}[x]$ and thus $\mathbb{Z}_{3}[x]_{x^{3}+2x^{2}+1}$ is a field.
$\square$

## b) ![[DMath-e-u10.pdf#page=1&rect=106,159,522,174|DMath-e-u10, p.1]]

Recall that $F^{*}$ is the (cyclic) group of units in the finite field $F$. Its order is given by the following.
$$
\begin{align}
|F^{*}| &= |F - \{ 0 \}| &\text{(D. 5.26.)} \\
&= |F| -1 &\text{(L. 5.34.)} \\
&= |\mathbb{Z}_{3}|^{\deg(m(x))} - 1 \\
&=3^{3}-1  \\
&= 26
\end{align}
$$

The elements of $F^{*}$ are polynomials of the form $a(x) = \alpha_{2}x^{2} + \alpha_{1}x + \alpha_{0}$, where $\alpha_{i} \in \mathbb{Z}_{3}$, not all equal zero. By theorem 5.40, the number of generators in $F^{*}$ is given by euler's totient function $\varphi(|F^{*}|) = 12$.




divides group order
1
2
13
26


number of generators



T.5.39. exists finite field with q elements iff q power of prime
T.5.40. the group of units is cyclic
C.5.11. every element minus identity is generator in prime order cyclic group
D.5.26 field definition
L.5.36 multiplicative field (?)



field is integral domain
in integral domain

# c) ![[DMath-e-u10.pdf#page=1&rect=106,140,522,156|DMath-e-u10, p.1]]



L.5.29.
