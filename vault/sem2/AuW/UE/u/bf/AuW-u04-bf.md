![[Auw-u04-e.pdf]]

## (a)

Let $X$ be the expected value of streets with flowers. We recall that the trip is a disaster, if $X \geq \frac 3 4$. Using Markov's inequality: $\Pr[X \geq t] \leq \frac {\mathbb E[X]} t$, we can conclude that the probability for a disastrous trip, $\Pr[X \geq \frac 3 4]$ is bounded by $\frac{\mathbb E[X]} {\frac 3 4} = \frac{4 \cdot \mathbb E[X]} 3$. All we need to do is calculate the expected value of $X$, meaning the expected number of streets with flowers encountered.
$$
\begin{align}
&\text{Let $\Omega$ denote the probability space of all unique $k$ long walks.} \\
&\text{Let $\omega$ denote one such walk.} \\
&\text{Let $X(\omega):= \bigg(\frac 1 2\bigg)^k$, ...?} \\
\\
&\mathbb E [X] = \sum_{\omega \in \Omega} X(\omega) \cdot \Pr[\omega] \\

\end{align}
$$


___
## (b)



$$
\Pr[X - \mathbb E[X] \geq t] \leq \frac{\text{Var}[X]}{t^2}
$$
___
## (c)



___
## (d)

