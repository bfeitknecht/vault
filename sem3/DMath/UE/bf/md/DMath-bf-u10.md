
# 10.5      Extension Fields ![[DMath-e-u10.pdf#page=1&rect=78,193,522,212|DMath-e-u10, p.1]]

## a) ![[DMath-e-u10.pdf#page=1&rect=105,178,522,193|DMath-e-u10, p.1]]

The algebra $\mathbb{Z}_{3}$ is a commutative ring, by example 5.34. Then, by theorem 5.21, if $R$ is a commutative ring, the extension $R[x]$ is also a commutative ring. Thus the structure $\mathbb{Z}_{3}[x]$ is a non-trivial commutative ring, since the additive and multiplicative identity are distinct, $\mathbf{0}\neq \mathbf{1}$.

Per lemma 5.35, for a ring $F[x]$, then $F[x]_{m(x)}$ is a ring with respect to addition and multiplication. Thus the algebra $\mathbb{Z}_{3}[x]_{x^{3}+2x^{2}+1}$ is a ring.

Finally, for a ring $F$ its extension field $F[x]_{m(x)}$ is a field if and only if $m(x)$ is irreducible, by theorem 5.37. Thus all that remains to show is that $m(x) = x^{3}+2x^{2}+1$ is irreducible in $\mathbb{Z}_{3}[x]$.



To do this, it follows from definition 5.28 and the fact that degrees of polynomials are added under multiplication. Since the degree of the modulus polynomial is three $\deg(m(x))=3$, it suffices to prove that it has no monic polynomial divisors. This can be expressed as $(x-\alpha) \not\equiv_{m(x)} 0$ for all $\alpha \in \mathbb{Z}_{3}$. Computations yield the following.
$$
\begin{align}
R_{x+0}(x^{3}+2x^{2}+1) &= 1 \\
R_{x+1}(x^{3}+2x^{2}+1) &= 2 \\
R_{x+2}(x^{3}+2x^{2}+1) &= 1
\end{align}
$$

Thus, $m(x) = x^{3}+2x^{2}+1$ is an irreducible polynomial in $\mathbb{Z}_{3}[x]$ and hence $F = \mathbb{Z}_{3}[x]_{x^{3}+2x^{2}+1}$ is a field.
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

The elements of $F^{*}$ are polynomials of the form $a(x) = \alpha_{2}x^{2} + \alpha_{1}x + \alpha_{0}$, where $\alpha_{i} \in \mathbb{Z}_{3}$, not all equal zero. By theorem 5.40, the number of generators in $F^{*}$ is given by euler's totient function $\varphi(|F^{*}|) = 12$. Since all constant polynomials only generate constant polynomials, let's consider the simplest monic polynomial with an indeterminate, $g(x) = x \in F^{*}$. The computations of the powers of $g(x)$ are given below.
$$
\begin{align}
g(x)^{0} = x^{0} &\equiv_{m(x)} 1 \\
g(x)^{1} = x^{1} &\equiv_{m(x)} x \\
g(x)^{2} = x^{2} &\equiv_{m(x)} x^{2} \\
g(x)^{3} = x^{3} &\equiv_{m(x)} x^{2} - 1 \\
g(x)^{4} = x^{4} &\equiv_{m(x)} x^{2} - x - 1 \\
g(x)^{5} = x^{5} &\equiv_{m(x)} -x - 1 \\
g(x)^{6} = x^{6} &\equiv_{m(x)} x^{2} - x \\
g(x)^{7} = x^{7} &\equiv_{m(x)} x^{2} + 1 \\
g(x)^{8} = x^{8} &\equiv_{m(x)} x^{2} + x - 1 \\
g(x)^{9} = x^{9} &\equiv_{m(x)} -x^{2} - x - 1 \\
g(x)^{10} = x^{10} &\equiv_{m(x)} x^{2} - x + 1 \\
g(x)^{11} = x^{11} &\equiv_{m(x)} x - 1 \\
g(x)^{12} = x^{12} &\equiv_{m(x)} x^{2} - x &= - g(x)^{-1} \\
g(x)^{13} = x^{13} &\equiv_{m(x)} - 1 &= -g(x)^{0} \ \ \\
g(x)^{14} = x^{14} &\equiv_{m(x)} - x &= - g(x)^{1} \ \ \\
g(x)^{15} = x^{15} &\equiv_{m(x)} -x^{2} &=-g(x)^{2} \ \ \\
& \phantom{x} \vdots & \vdots \qquad\qquad \\
g(x)^{25} = x^{25} &\equiv_{m(x)} -x^{2} + x &= g(x)^{-1} \ \ \ \\
g(x)^{26} = x^{26} &\equiv_{m(x)} 1
\end{align}
$$

It can be observed, that after the first thirteen iterations, continued exponentiation repeats the additive inverses of the previous expressions. Thus, since it holds that $\langle x \rangle = F^{*}$, the polynomial $g(x) = x$ is a generator of$F^{*}$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# c) ![[DMath-e-u10.pdf#page=1&rect=106,140,522,156|DMath-e-u10, p.1]]


Since $F$ is a field, and by theorem 5.24, every field is an integral domain, $F[y]$ is an integral domain by lemma 5.22. Its elements are the polynomials in $y$ with coefficients in $F = \mathbb{Z}_{3}[x]_{m(x)}$. This can alternatively be understood as the polynomials in two indeterminates i.e. $a(x,y) \in \mathbb{Z}_{3}[x, y]_{m(x)}$, as in example 5.43. Then, per definition 5.33 for a polynomial $a(x,y) \in F[x,y]$ an element $(\alpha, \beta) \in F^{2}$ is a root exactly when $a(\alpha, \beta) = 0$. In this case, we have to find $(\alpha, \beta) \in \mathbb{Z}_{3}^{2}$.


| $(x,y)$ | $0$ | $1$ | $2$ |
| ------- | --- | --- | --- |
| $0$     |     |     |     |
| $1$     |     |     |     |
| $2$     |     |     |     |







(x,y) =
~~0,0~~
0,1
0,2
1,0
~~1,1~~
1,2
2,0
~~2,1~~
~~2,2~~

