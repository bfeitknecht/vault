
Basil Feitknecht, 23-922-099
Alex Vance, 24-943-763

# 1.1

## (a)
![[A&D-e-u01.pdf#page=1&rect=87,463,528,526|A&D-e-u01, p.1]]

The **base case** for $n\leftarrow0$ is trivial, both sides are equal to one.
$$
\boxed{
\begin{align}
\overbrace{ \sum_{k=0}^{n} (2k+1)}^{ 1 } &\leq \overbrace{ (n+1)^2 }^{ 1 }  \\
1 &= 1
\end{align}
}
$$

Now, we will formulate the **inductive hypothesis**, for some arbitrary $n\in \mathbb N$
$$
\boxed{
\begin{align}
\sum_{k=0}^{n} (2k+1) &\geq (n+1)^2, &\forall n\geq 0 \\
\end{align}
}
$$

In the **inductive step**, we let $n\leftarrow n+1$, i.e. 
$$
\boxed{\sum_{k=0}^{n+1} (2k+1) \geq (n+2)^2}
$$

All that remains is to simplify and apply the inductive hypothesis.
$$
\begin{align}
\sum_{k=0}^{n+1} (2k+1) &\geq (n+2)^2 &\text{(split the sum, expand the square)} \\
\bigg(\sum_{k=0}^{n} (2k+1)\bigg) + (2n+3) &\geq n^2+4n+4 &\text{(subtract like terms)} \\
\sum_{k=0}^{n} (2k+1) &\geq n^2+2n+1 &\text{(collect the square)} \\
\sum_{k=0}^{n} (2k+1) &\overset{\text{i.h.}}{\geq} (n+1)^2 &\square \\
\end{align}
$$


## (b)
![[A&D-e-u01.pdf#page=1&rect=85,403,528,457|A&D-e-u01, p.1]]

We determine $m$ through computing the first few terms.
$$
\begin{align}
2 &< 2^2=4 &\text{($m=1$)}\\
10 &< 2^4 = 16 &\text{($m=2$)} \\
58 &< 2^6 = 164 &\text{($m=3$)} \\
346 &> 2^8 = 256 &\text{(b.c., $m=4$)} \\
\end{align}
$$

This yields $m=4$. We use this computation as **base case** for our induction. and formulate the **inductive hypothesis** for some $m\leq n\in \mathbb N$.
$$
\boxed{
\begin{align}
a_{n} &\geq2^{2n}, &\forall n\geq m \\
\end{align}
}
$$

Now to the **induction step**.
$$
\begin{align}
a_{n+1} &\geq 2^{2(n+1)} &\text{(def. $a_{n}$, distribute power)}\\
6\cdot a_{n}-2 &\geq 2^{2n+2} &\text{(decompose power)} \\
6\cdot a_{n}-2 &\geq 2^{2}\cdot2^{2n} &\text{(increase l.h.s.)} \\
6\cdot a_{n} &\geq 4\cdot 2^{2n} &\text{(substitute $\mathbf{i.h.}$)} \\
6 \cdot 2^{2n} &\geq 4\cdot2^{2n} &\text{(divide by $2^{2n}$)} \\
6 &\geq 4 &\square
\end{align}
$$

<div class="page-break" style="page-break-before: always;"></div>


# 1.3
![[A&D-e-u01.pdf#page=1&rect=68,70,536,86|A&D-e-u01, p.1]]

## (a)
![[A&D-e-u01.pdf#page=2&rect=86,756,422,770|A&D-e-u01, p.2]]
$$
\begin{align}
\lim_{ m \to \infty } \frac{10m^5+90m^4}{100m^5} &= \frac{\cancel{ m^4 }(10m +1)}{\cancel{ m^4 }(100m)} \\
&\overset{\text{l'Hôpital}} =\frac{10}{100} =0.1
\end{align}
$$
Since $\lim_{ m \to \infty } \frac{f(m)}{g(m)} \neq 0$ but also $\lim_{ m \to \infty } \frac{g(m)}{f(m)} \neq 0$, $f$ and $g$ grow asymptotically equal.
$\square$

## (b)
![[A&D-e-u01.pdf#page=2&rect=87,734,486,753|A&D-e-u01, p.2]]

First, we cancel like terms $\frac{80\cdot2^m \log (m)-2^m}{5\cdot 2^m \log(m)^2} =\frac{80\log(m)-1}{5\log(m)^2}$.
$$
\begin{align}
\lim_{ m \to \infty } \frac{80\log(m)-1}{5\log(m)^2}  \overset{\text{l'Hôpital}}{=} \frac{ \frac{80}{m}}{\frac{10\log(m)}{m}} = \frac{8}{\log(m)} \overset{\infty}{\to} 0 \\
\end{align}
$$
Since the limit as $m$ approaches infinity equals zero, $f$ grows asymptotically slower than $g$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (c)
![[A&D-e-u01.pdf#page=2&rect=87,714,406,732|A&D-e-u01, p.2]]

We make use of the fact that $\log(m^3) =3\log m$ and further reduce the fraction in the limit $\frac{3\cancel{ \log (m) }}{\log (m)^\cancelto{ 2 }{ 3 }}=\frac{3}{\log(m)^3}$. Since the limit of a constant divided by a monotonically increasing function is zero, $f$ indeed grows asymptotically slower than $g$.
$\square$

## (d)
![[A&D-e-u01.pdf#page=2&rect=87,694,406,711|A&D-e-u01, p.2]]

$$
\begin{align}
\lim_{ m \to \infty } \frac{4^{m^2+m+ 1}}{2^{3m^2}} &= \lim_{ m \to \infty } \frac{2^{\cancel{ 2m^2 }+2m+2}}{2^{\cancel{ 3 }m^2}} \\
&=\lim_{ m \to \infty } 2^{\cancelto{ -\infty }{ 2m+2-m^2 }} \\
&=0
\end{align}
$$
This proves, that $f$ does in fact grow asymptotically slower than $g$.
$\square$
