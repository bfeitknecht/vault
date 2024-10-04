
Basil Feitknecht, 23-922-099
Alex Vance, 24-943-763


![[A&D-e-u02.pdf#page=2&rect=65,600,531,692|A&D-e-u02, p.2]]


# 2.2
![[A&D-e-u02.pdf#page=2&rect=67,369,529,403|A&D-e-u02, p.2]]

## (a)
$\boxed{n^5+4n^4 \leq \mathcal O\left( \frac{n^6}{5}\right)}$

Thus, $f=n^5 + 4n^4$ and $g=\frac{n^6}{5}$. We apply the theorem and compute the limit.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{n^5+4n^4}{\frac{n^6}{5}} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^5 }\left( 1+\frac{4}{n} \right)}{\cancel{ n^5 }\frac{n}{5}} \\
&= \lim_{ n \to \infty } \frac{\frac{n+4}{n}}{\frac{n}{5}} \\
&= \lim_{ n \to \infty } \frac{5n+20}{n^2} \overset{\text{l'Hôp}}\\
\end{align}
$$
