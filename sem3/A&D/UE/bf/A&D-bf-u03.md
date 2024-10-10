
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
false, $f \not\leq O(g)$.

### (2)
Em

### (3)
True, constants don't matter.

### (4)
Em


<div class="page-break" style="page-break-before: always;"></div>

## (b)
Prove the following statements.
![[A&D-e-u03.pdf#page=2&rect=86,556,530,669|A&D-e-u03, p.2]]

### (1)
Let $f(n) = \sqrt{ n^2 +n +1 }$ and $g(n)=n$. We will show that $\lim_{ n \to \infty } \frac{f(n)}{g(n)} = C \in \mathbb{R}^+$ and thus $f=\Theta(g)$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{\sqrt{ n^2+n+1 }}{n} &= \lim_{ n \to \infty } \frac{\sqrt{ n^2\left( 1+\frac{1}{n} +\frac{1}{n^2}\right) }}{n} \\ \\
&= \lim_{ n \to \infty } \frac{\cancel{ n} \sqrt{ 1+\frac{1}{n} + \frac{1}{n^2} }}{\cancel{ n }} \\
&= \sqrt{ 1 } = 1
\end{align}
$$
$\square$


### (2)
Em

### (3)
Let $f : n \mapsto \log(n^2 + n)$ and $g : n\mapsto \log(n+1)$. Per definition of $\Theta$ we will show, that $f \leq O(g)$ and $g \leq O(f)$.


<div class="page-break" style="page-break-before: always;"></div>

# 3.3
![[A&D-e-u03.pdf#page=3&rect=67,410,529,493|A&D-e-u03, p.3]]
![[A&D-e-u03.pdf#page=4&rect=65,579,537,598|A&D-e-u03, p.4]]

## (a)
![[A&D-e-u03.pdf#page=3&rect=68,259,529,404|A&D-e-u03, p.3]]

Em

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u03.pdf#page=4&rect=65,612,533,775|A&D-e-u03, p.4]]

The exact number of calls to the function $f$ is given by $\sum_{i=1}^{2n} \sum_{j=1}^{i^3} n$.

 $$
\begin{align}
n \cdot \sum_{i=1}^{2n}i^3 &= n \cdot \left( \frac{2n(2n+1)}{2} \right)^2 \\
&= n \cdot (2n^2 + n)^2 \\
&=4n^5 + 4n^4 + n^3
\end{align}
$$