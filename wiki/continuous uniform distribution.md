
![[W&S-script-1.pdf#page=43&rect=131,506,498,595|W&S-script-1, p.42]]

A [[continuous]] [[random variable]] $X$ is said to exhibit **continuous uniform distribution** in the [[interval]] $[a, b]$, with $a < b$ if its [[probability density|density]] and hence [[probability distribution|distribution]] is as defined below. In this case we write $X \sim \mathcal{U}([a, b])$.
$$
\begin{align}
f_{a, b}(x) &= \begin{cases}
\frac{1}{b-a} & x \in [a, b], \\
0 & \text{otherwise}
\end{cases} \\ \\
F_{X}(x) &= \begin{cases}
0 & x < a, \\
\frac{x-a}{b-a} & a \leq x \leq b, \\
1 & \text{otherwise}
\end{cases}
\end{align}
$$

Intuitively, $X$ describes a point in the interval uniformly chosen. The [[probability distribution]] of any random variable is uniformly distributed.