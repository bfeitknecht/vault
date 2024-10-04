
Basil Feitknecht, 23-922-099
Alex Vance, 24-943-763


![[A&D-e-u02.pdf#page=2&rect=66,596,537,694|A&D-e-u02, p.2]]


# 2.2
![[A&D-e-u02.pdf#page=2&rect=67,369,529,403|A&D-e-u02, p.2]]

## (a)
$\boxed{n^5+4n^4 \leq O\left( \frac{n^6}{5}\right)}$

Per definition, $f=n^5 + 4n^4$ and $g=\frac{n^6}{5}$. We apply the theorem and compute the limit.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{n^5+4n^4}{\frac{n^6}{5}} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^5 }\left( 1+\frac{4}{n} \right)}{\cancel{ n^5 }\frac{n}{5}} \\
&= \lim_{ n \to \infty } \frac{\frac{n+4}{n}}{\frac{n}{5}} \\
&= \lim_{ n \to \infty } \frac{5n+20}{n^2} \overset{\text{l'Hôpital}}{=} \lim_{ n \to \infty } \frac{5}{2n}  \\
&= 0 \\
\end{align}
$$
Since the limit is zero, $f\leq O(g)$.
$\square$


## (b)
$\boxed{n^{10}-10n^9-100n^8 \leq O\left(1000n^7\right)}$

This gives $f=n^{10}-10n^9-100n^8$ and $g=1000n^7$. We compute the limit to determine the asymptotic relation.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{n^{10}-10n^9-100n^8}{1000n^7} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^7 }(n^3-10n^2-100n)}{\cancel{ n^7 } (1000)} \\
&= \infty
\end{align}
$$

Since the numerator approaches infinity and the denominator is constant, the limit is equal to infinity and thus $f\not\leq O(g)$ but $g\leq O(f)$.
$\square$


## (c)
$\boxed{2^{2n}\leq O(e^{ n })}$

The functions are $f=2^{2n}$ and $g=e^{ n }$. We again take the limit.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{2^{2n}}{e^n} =\lim_{ n \to \infty } \frac{4^n}{e^n} \\
&= \lim_{ n \to \infty } \frac{e^{ n \ln(4) }}{e^n} = \lim_{ n \to \infty } e^{ n(\ln(4)-1) } \\
&= \infty
\end{align}
$$
Since the limit approaches infinity, $f \not \leq O(g)$ but $g \leq O(f)$.
$\square$


## (d)
$\boxed{n^{\frac{6n+10}{3n+2}} \leq O(n^3)}$

We define $f=n^{\frac{6n+10}{3n+2}}$ and $g=n^3$. To determine the asymptotic relation, we compute the limit.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)}
&= \lim_{ n \to \infty } \frac{n^{\frac{6n+10}{3n+2}}}{n^3}  \\
&= \lim_{ n \to \infty } n^{\frac{6n+10}{3n+2}-3}\\
&= \lim_{ n \to \infty } n^{\overbrace{ -\frac{3n+4}{3n+2} }^{ \to -1 }} = \lim_{ n \to \infty } \frac{1}{n} \\
&= 0
\end{align}
$$
Since the limit equals zero, $f\leq O(g)$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 2.3
![[A&D-e-u02.pdf#page=2&rect=66,198,531,247|A&D-e-u02, p.2]]
![[A&D-e-u02.pdf#page=2&rect=66,97,531,195|A&D-e-u02, p.2]]
![[A&D-e-u02.pdf#page=3&rect=63,742,529,772|A&D-e-u02, p.3]]

## (a)
![[A&D-e-u02.pdf#page=3&rect=85,705,537,739|A&D-e-u02, p.3]]

l