
Basil Feitknecht, 23-922-099
Alex Vance, 24-943-763


![[A&D-e-u02.pdf#page=2&rect=65,600,531,692|A&D-e-u02, p.2]]


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

This gives $f=n^{10}-10n^9-100n^8$ and $g=1000n^7$. We compute the limit,
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

The functions are $f=2^{2n}$ and $g=e^{ n }$.