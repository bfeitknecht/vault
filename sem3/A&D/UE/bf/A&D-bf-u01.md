
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



# 1.3
![[A&D-e-u01.pdf#page=1&rect=68,70,536,86|A&D-e-u01, p.1]]

## (a)
![[A&D-e-u01.pdf#page=2&rect=86,756,422,770|A&D-e-u01, p.2]]



## (b)
![[A&D-e-u01.pdf#page=2&rect=87,734,486,753|A&D-e-u01, p.2]]


## (c)
![[A&D-e-u01.pdf#page=2&rect=87,714,406,732|A&D-e-u01, p.2]]

We make use of the fact that $\log(m^3) =3\log m$.
$$
\begin{align}
\lim_{ m \to \infty } \frac{3(\log m)}{(\log m)^3} &= \frac{3}{(\log m)^2} &\text{(l'Hôpital)} \\
&= \frac{1}{\frac{2(\log m)}{m}} = \frac{m}{2(\log m)} &\text{(l'Hôpital)} \\
&=\frac{1}{\frac{2}{m}} = \frac{m}{2} \overset{\infty}{\to} \infty \\
\end{align}
$$

Since $\lim_{ m \to \infty } \frac{f(m)}{g(m)} = \infty$, $f$ grows asymptotically faster than $g$.
$\qed$

## (d)
![[A&D-e-u01.pdf#page=2&rect=87,694,406,711|A&D-e-u01, p.2]]
