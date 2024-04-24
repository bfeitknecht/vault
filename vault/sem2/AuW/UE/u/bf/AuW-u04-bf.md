![[Auw-u04-e.pdf]]

## (a)
Let $X$ be the expected value of streets with flowers. We recall that the trip is a disaster, if $\mathrm{X} \geq \frac 3 4$. Using Markov's inequality: $\Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t$, we can conclude that the probability for a disastrous trip, $\Pr[\mathrm{X} \geq \frac 3 4]$ is bounded by $\frac{\mathbb E[\mathrm{X}]} {\frac 3 4} = \frac{4 \cdot \mathbb E[\mathrm{X}]} 3$. All we need to do is calculate the expected value of $X$, meaning the expected number of streets with flowers encountered. For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence, $\mathbb E[\mathrm{X}] = np = \frac k 2$.
Thus follows:

$$
\begin{align}
& \Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t \overset{\text{Mark.}}\implies\\
&\Pr[\mathrm{X} \geq \frac 3 4 \cdot k] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$

___
## (b)
Since $\text{Var}[\mathrm{X}]= np (1-p)$ for binomial distributions $\mathrm{X} \sim \mathrm{Bin}(n, p)$, the variance in our case is $k \cdot \frac{1}{2} \cdot \left( 1-\frac{1}{2} \right) = \frac k 4$.

$$
\begin{align}
&\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] \leq \frac{\text{Var}[\mathrm{X}]}{t^2} \overset{\text{Cheby.}} \implies \\
&\Pr[|\mathrm{X} - \frac{2}{3}| \geq \frac 3 4 \cdot k] \leq \frac{\frac k 4}{\big(\frac 3 4 \cdot k\big)^2} = \frac {4^2 \cdot k} {4 \cdot (3k)^2} = \frac {4}{3^2 \cdot k}\\
&\square
\end{align}
$$

___
## (c)

$$
\begin{align}
\\
\\
&\text{Let X = "Number of sniffling dogs"}\\
&\mathbb E[\mathrm{X}] \overset?= \\
\\
\\
&k \geq \log_{2}{(n)}+1 \overset?\implies \Pr[\mathrm{X} = 0] \geq \frac{1}{2} \\ \\
\end{align}
$$


___
## (d)


$$
\begin{align}
&\text{Let } k=1000\log_{2}(n) \text{ and } n \geq 2. &\text{(1)} \\
&\text{Let } \mathrm{A} =\text{"all trips were a pleasure".} \\ \\
&\text{(1)} \overset?\implies \Pr[\mathrm{A}] \geq 0.99
\end{align}
$$






"i always find it therefore i never search"

