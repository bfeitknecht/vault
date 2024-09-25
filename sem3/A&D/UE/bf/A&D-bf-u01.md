
# 1.1

## (a)
![[A&D-e-u01.pdf#page=1&rect=87,463,528,526|A&D-e-u01, p.1]]


$$
\begin{align}
0 &\geq 0 &\text{(b.c., $n\leftarrow0$)} \\
\sum_{i=0}^{n} (2n+1) &\geq (n+1)^2, \forall n\geq 0 &\text{(i.h.)} \\
\sum_{i=0}^{n+1} (2n+1) &\geq (n+2)^2 &\text{(i.s., $n\leftarrow n+1$)} \\
\bigg(\sum_{i=0}^{n} (2n+1)\bigg) + (2n+3) &\geq n^2+4n+4 &\text{(subtract like terms)} \\
\sum_{i=0}^{n} (2n+1) &\geq n^2+2n+1 &\text{(collect the square)} \\
\sum_{i=0}^{n} (2n+1) &\overset{\text{i.h.}}{\geq} (n+1)^2 &\qed \\
\end{align}
$$



## (b)
![[A&D-e-u01.pdf#page=1&rect=85,403,528,457|A&D-e-u01, p.1]]

$$
\begin{align}
a_{1} &= 2, a_{n\geq1} = 6a_{n}-2 &\text{(def. $a_{n}$)} \\

\end{align}
$$
...
___

# 1.3
![[A&D-e-u01.pdf#page=1&rect=68,70,536,86|A&D-e-u01, p.1]]

## (a)
![[A&D-e-u01.pdf#page=2&rect=86,756,422,770|A&D-e-u01, p.2]]
$$
\begin{align}
\lim_{ m \to \infty } \frac{10m^5+90m^4}{100m^5} &= \frac{\cancel{ m^4 }(10m +1)}{\cancel{ m^4 }(100m)} \\
&\overset{\text{l'Hôpital}} =\frac{10}{100} =10
\end{align}
$$
Since $\lim_{ m \to \infty } \frac{f(m)}{g(m)} \neq 0$ but also $\lim_{ m \to \infty } \frac{g(m)}{f(m)} \neq 0$, $f$ and $g$ grow asymptotically equal.
$\qed$


## (b)
![[A&D-e-u01.pdf#page=2&rect=87,734,486,753|A&D-e-u01, p.2]]

First, we cancel like terms $\lim_{ m \to \infty } \frac{80\cdot2^m \log (m)-2^m}{5\cdot 2^m \log(m)^2} = \lim_{ m \to \infty } \frac{\cancel{ 2^m }(80\log(m)-1)}{\cancel{ 2^m }5\log(m)^2}$.

$$
\begin{align}
\lim_{ m \to \infty } \frac{80\cdot2^m \log (m)-2^m}{5\cdot 2^m \log(m)^2} = \lim_{ m \to \infty } \frac{\cancel{ 2^m }(80\log(m)-1)}{\cancel{ 2^m }5\log(m)^2}  \\
\end{align}
$$

## (c)
![[A&D-e-u01.pdf#page=2&rect=87,714,406,732|A&D-e-u01, p.2]]

We make use of the fact that $\log(m^3) =3\log m$ and apply l'Hôpital's rule.
$$
\begin{align}
\lim_{ m \to \infty } \frac{3\log (m)}{\log (m)^3} &\overset{\text{l'Hôpital}}{=} \frac{3}{\log (m)^2} \\
&\overset{\text{l'Hôpital}}{=} \frac{1}{\frac{2\log (m)}{m}} = \frac{m}{2\log (m)} \\
&\overset{\text{l'Hôpital}}{=} \frac{1}{\frac{2}{m}} = \frac{m}{2} \overset{\infty}{\to} \infty \\
\end{align}
$$

Since $\lim_{ m \to \infty } \frac{f(m)}{g(m)} = \infty$, $f$ grows asymptotically faster than $g$.
$\qed$

## (d)
![[A&D-e-u01.pdf#page=2&rect=87,694,406,711|A&D-e-u01, p.2]]

