Basil Feitknecht, 23-922-099,
Alex Vance, 24-943-763


![[A&D-e-u03.pdf#page=1&rect=63,278,526,504|A&D-e-u03, p.1]]

![[A&D-e-u03.pdf#page=1&rect=65,151,522,247|A&D-e-u03, p.1]]

<div class="page-break" style="page-break-before: always;"></div>

# 3.1
For all the following functions $n \in \mathbb{N}$ and $n \geq 2$.

## (a)
Prove or disprove the following statements. Justify your answer.
![[A&D-e-u03.pdf#page=2&rect=85,688,526,774|A&D-e-u03, p.2]]

### (1)
False, let $f(n) =3n^5+5n^3$ and $g(n)=4n^4$. We will show that $f \neq \Theta(g)$. Since the highest power dominating the terms are not equal, specifically $f$ grows asymptotically faster than $g$, the limit will diverge.
$$
\begin{align}
\lim_{ n \to \infty }  \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{3n^5 + 5n^3}{4n^4} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^4 }\left( 3n + \frac{5}{n} \right)}{4\cancel{ n^4 }} \\
&= \lim_{ n \to \infty } \frac{3n}{4} \\
&= \infty
\end{align}
$$
$\square$

### (2)
False. Let $f(n)=n^{2}+n\log(n)$ and $g(n)=n^{2}\log(n)$ Then we evaluate $\lim_{ n \to \infty }\frac{f(n)}{g(n)}$ to show that $g \leq\Omega(f)$.
$$
\begin{align}
\lim_{ n \to \infty }  \frac{f(n)}{g(n)} &= \lim_{ n \to \infty }  \frac{n^{2}+n\log(n)}{n^{2}\log(n)} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^{2} }\left( 1+\frac{\log(n)}{n} \right)}{\cancel{ n^{2} }\log(n)} \\
&= \lim_{ n \to \infty } \frac{1+\cancelto{ 0 }{ \frac{\log(n)}{n} }}{\log(n)} \\
&= 0
\end{align}
$$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

### (3)
True, constants don't matter. Let $f(n)=\frac{n^6}{6}+10n^4+100n^3$ and $g(n)=6n^6$. Let's compute the limit to show that it's a constant and thus prove that $f = \Theta(g)$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{\frac{n^6}{6}+10n^4+100n^3}{6n^6} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^6 }\left( \frac{1}{6} + \frac{10}{n^2} + \frac{100}{n^3}\right)}{6\cancel{ n^6 }} \\
&= \frac{1}{36}
\end{align}
$$
$\square$

### (4)
True. Let $f(n) = 3^{n}$ and $g(n)=n^{3/\ln(n)}e^{ n }$. Then we will show that $f \geq \Omega(g)$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{3^{n}}{\cancel{ n^{3/\ln(n)}K }e^{ n }} \\
&= \lim_{ n \to \infty } \left( \frac{3}{e} \right)^{n} \\
&= \infty
\end{align}
$$
$\square$


<div class="page-break" style="page-break-before: always;"></div>

## (b)
Prove the following statements.
![[A&D-e-u03.pdf#page=2&rect=86,556,530,669|A&D-e-u03, p.2]]

### (1)
Let $f(n) = \sqrt{ n^2 +n +1 }$ and $g(n)=n$. We will show that $\lim_{ n \to \infty } \frac{f(n)}{g(n)} = C \in \mathbb{R}^+$ and thus $f=\Theta(g)$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{\sqrt{ n^2+n+1 }}{n} &= \lim_{ n \to \infty } \frac{\sqrt{ n^2\left( 1+\frac{1}{n} +\frac{1}{n^2}\right) }}{n} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n} \sqrt{ 1+\frac{1}{n} + \frac{1}{n^2} }}{\cancel{ n }} \\
&= \sqrt{ 1 } = 1
\end{align}
$$
$\square$


### (2)
False. We can simplify $\sum_{i=1}^{n}\log (i^{i})=\sum_{i=1}^{n}i \log (i)$. Only considering the second half of the sum, i.e. $\sum_{i=\left\lceil  \frac{n}{2}  \right\rceil}^ni\log(i)$, we note that the smallest term in it is $\left\lceil  \frac{n}{2}  \right\rceil\log\left( \left\lceil  \frac{n}{2}  \right\rceil \right)$ and there are $\left\lceil  \frac{n}{2}  \right\rceil$ strictly greater terms after it. Also, $\log\left( \frac{n}{2} \right) =\log(n)-\log(2)$, where $\log(2)$ is a constant. Thus the upper half of the  sum approximates to $\sum_{i=\left\lceil  \frac{n}{2}  \right\rceil}^ni\log(i) \approx \frac{n^{2}\log (n)}{4}$. Since, with the lower half of the sum also contributing this is already only a constant multiple of $n^{2}\log(n)$, the statement is proven. 
$\square$

<div class="page-break" style="page-break-before: always;"></div>

### (3)
Let $f(n)=\log(n^2 + n)$ and $g(n) =\log(n+1)$. We will show that $\lim_{ n \to \infty } \frac{f(n)}{g(n)} =C \in \mathbb{R}^+$ and thus $f = \Theta(g)$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{f(n)}{g(n)} &= \lim_{ n \to \infty } \frac{\log(n^2 +n)}{\log (n+1)} \\
&= \lim_{ n \to \infty } \frac{\log (n) + \log(n+1)}{\log(n+1)} &\text{(l'Hôpital)}\\
&= \lim_{ n \to \infty } \frac{\frac{1}{n}+\frac{1}{n+1}}{\frac{1}{n+1}}  \\
&= \lim_{ n \to \infty } \left( \frac{1}{n} +\frac{1}{n+1} \right) \cdot (n+1) = \lim_{ n \to \infty } \left(\frac{n+1}{n} + 1 \right) \\
&= \lim_{ n \to \infty } \frac{2n+1}{n} &\text{(l'Hôpital)} \\
&= 2 \\
\end{align}
$$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 3.3
![[A&D-e-u03.pdf#page=3&rect=67,410,529,493|A&D-e-u03, p.3]]
![[A&D-e-u03.pdf#page=4&rect=65,579,537,598|A&D-e-u03, p.4]]

## (a)
![[A&D-e-u03.pdf#page=3&rect=68,259,529,404|A&D-e-u03, p.3]]

The exact number of calls to $f$ is presented below.
$$
\begin{align}
\sum_{i=0}^{n}\left( 1+\sum_{j+1}^{n}2 \right) &=\sum_{i=0}^{n}(2n+1) \\
&=2n^2+3n+1
\end{align}
$$

This program is thus in $\Theta(n^{2})$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u03.pdf#page=4&rect=65,612,533,775|A&D-e-u03, p.4]]

The exact number of calls to $f$ in sum notation and computed exactly is given below.
 $$
\begin{align}
\sum_{i=1}^{2n} \sum_{j=1}^{i^3} n &= \sum_{i=1}^{2n}  (i^3 \cdot n) = n \cdot \sum_{i=1}^{2n}i^3  \\
&= n \cdot \left( \frac{2n(2n+1)}{2} \right)^2 \\
&= n \cdot (2n^2 + n)^2 \\
&=4n^5 + 4n^4 + n^3
\end{align}
$$

Since the highest power term dominates the rest of the expression as $n\to \infty$, the number of function calls to $f$ is in $\Theta(n^5)$.
$\square$
