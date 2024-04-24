![[Auw-u04-e.pdf]]

## (a)
Let $\mathrm{X}$ be the random variable denoting the number of streets with flowers. We recall that the trip is a disaster, if $\mathrm{X} \geq \frac 3 4$. To apply Markov's inequality, $\Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t$, we need the expected value $\mathbb{E}[\mathrm{X}]$, meaning the expected number of streets with flowers encountered.
For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence,
$$
\begin{align} \\
&\mathbb E[\mathrm{X}] = np = \frac{k}{2} \\

&\Pr\left[ \mathrm{X} \geq \frac 3 4 \cdot k \right] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$

___
## (b)
Using Chebyshev's inequality, $\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] \leq \frac{\text{Var}[\mathrm{X}]}{t^2}$, requires $\text{Var}[\mathrm{X}]$. For binomial distributions $\mathrm{X} \sim \mathrm{Bin}(n, p)$, as in our case, this is given by $\text{Var}[\mathrm{X}] = np(1-p) = k \cdot \frac{1}{2} \cdot \left( 1-\frac{1}{2} \right) = \frac k 4$. Thus,
$$
\begin{align} \\
&\Pr\bigg[\bigg|\mathrm{X} - \frac{k}{2} \bigg| \geq \frac{3}{4} \cdot k \bigg] \leq \frac{\frac {k}{4}}{\big(\frac{3}{4} \cdot k\big)^2} = \frac {4}{3^2 \cdot k} \\
&\square
\end{align}
$$

___
## (c)
We know, that the probability for any one dog to sniffle is $\Pr\left[ \mathrm{X}\geq k \right]$. $\text{Let Y = "Number of sniffling dogs"}$, where $\mathrm{Y} = \mathrm{Y}_{1} + \dots + \mathrm{Y}_{n-1}$ and $\mathrm{Y}_{i} \sim \mathrm{Bernoulli}(p),\ \mathrm{Y}_{i}\text{ independent}$.

This is by the fact that all $n-1$ trips are independent and the probability of any one dog sniffling for the rest of the day is given by $p=\frac{2}{3}$. Thus follows $\mathrm{Y} \sim \text{Bin}(n, p)$ and $\mathbb E[\mathrm{Y}] = (n-1) \cdot \frac{2}{3}$.




$$
\begin{align}
&\text{Let } k \geq \log_{2}{(n)}+1 &\text{(1)} \\ \\
&\Pr\left[ \mathrm{X} \geq k  \right] \leq \frac{\mathbb E[\mathrm{}]\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
%&\Pr[\mathrm{Y} = s] = \binom{n}{s} \cdot p^s \cdot (1-p)^{n-s} &\text{(2)} \\
%&\text{(1)}, (2) \implies \Pr[\mathrm{Y} = 0] = \frac{n!}{0!(n)!} \cdot \left( \frac{2}{3}\right)^0 \cdot \left( \frac{1}{3} \right)^n \\
 \\
 \\
 \\
&k \geq \log_{2}{(n)}+1 \overset{?}{\implies} \Pr[\mathrm{Y} = 0] \geq \frac{1}{2}
\end{align}
$$


___
## (d)


$$
\begin{align}
&\text{Let } k=1000\log_{2}(n) \text{ and } n \geq 2. &\text{(1)} \\
&\text{(1)} \overset?\implies \Pr[\mathrm{\mathrm{Y}= n}] \geq 0.99
\end{align}
$$






"i always find it therefore i never search"

