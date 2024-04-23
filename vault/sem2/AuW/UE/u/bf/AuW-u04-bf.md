![[Auw-u04-e.pdf]]

## (a)
Let $X$ be the expected value of streets with flowers. We recall that the trip is a disaster, if $X \geq \frac 3 4$. Using Markov's inequality: $\Pr[X \geq t] \leq \frac {\mathbb E[X]} t$, we can conclude that the probability for a disastrous trip, $\Pr[X \geq \frac 3 4]$ is bounded by $\frac{\mathbb E[X]} {\frac 3 4} = \frac{4 \cdot \mathbb E[X]} 3$. All we need to do is calculate the expected value of $X$, meaning the expected number of streets with flowers encountered. For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence, $\mathbb E[X] = np = \frac k 2$.
Thus follows:

$$
\begin{align}
& \Pr[X \geq t] \leq \frac {\mathbb E[X]} t \overset \cdot \implies\\
&\Pr[X \geq \frac 3 4 \cdot k] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$

___
## (b)
Since $\text{Var}[X]= np (1-p)$ for binomial distributions, the variance in our case is $\frac k 2 \cdot \frac 1 2 = \frac k 4$.

$$
\begin{align}
&\Pr[|X - \mathbb E[X]| \geq t] \leq \frac{\text{Var}[X]}{t^2} \overset \cdot \implies \\
&\Pr[|X - \frac{2}{3}| \geq \frac 3 4 \cdot k] \leq \frac{\frac k 4}{\big(\frac 3 4 \cdot k\big)^2} = \frac {4^2 \cdot k} {4 \cdot (3k)^2} = \frac {4}{3^2 \cdot k}\\
&\square
\end{align}
$$

___
## (c)

$$
\begin{align}
&\text{Let $\Omega$ denote the probability space.} \\
&\text{Let $\mathcal H$ denote the set of sniffling dogs.} \\
&\text{Let $\mathbf{A}$ denote that the set of sniffling dogs is empty.} \\
\end{align}
$$
$$x
\begin{align} \\
&k \geq \log_{2}{(n)}+1 \implies \Pr[\mathbf{A}] \geq \frac{1}{2} \\ \\

\end{align}
$$

___
## (d)






"i always find it therefore i never search"