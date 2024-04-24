![[Auw-u04-e.pdf]]

## (a)
Let $\mathrm{X}$ be the random variable denoting the number of streets with flowers. We recall that the trip is a disaster, if $\mathrm{X} \geq \frac 3 4$. To apply Markov's inequality, $\Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t$, we need the expected value $\mathbb{E}[\mathrm{X}]$, meaning the expected number of streets with flowers encountered.
For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence,

$$
\begin{align}
&\mathbb E[\mathrm{X}] = np = \frac{k}{2} \\

&\Pr\left[ \mathrm{X} \geq \frac 3 4 \cdot k \right] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$

___
## (b)
Using Chebyshev's inequality, $\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] \leq \frac{\text{Var}[\mathrm{X}]}{t^2}$, requires $\text{Var}[\mathrm{X}]$. For binomial distributions $\mathrm{X} \sim \mathrm{Bin}(n, p)$, as in our case, this is given by $\text{Var}[\mathrm{X}] = np(1-p) = k \cdot \frac{1}{2} \cdot \left( 1-\frac{1}{2} \right) = \frac k 4$. Thus,

$$
\begin{align}
&\Pr\bigg[\bigg|\mathrm{X} - \frac{k}{2} \bigg| \geq \frac{3}{4} \cdot k \bigg] \leq \frac{\frac {k}{4}}{\big(\frac{3}{4} \cdot k\big)^2} = \frac {4}{3^2 \cdot k} \\
&\square
\end{align}
$$

___
## (c)
Let $\text{Y = "\# sniffling dogs"}$, where $\mathrm{Y} = \mathrm{Y}_{1} + \dots + \mathrm{Y}_{n-1}$ with $\mathrm{Y}_{i} \sim \mathrm{Bernoulli}(p), \text{ independent}$. We know, that the probability $p$ for any one dog to sniffle all day is $\Pr[\mathrm{X} = k]$. Thus, $\mathrm{Y} \sim \text{Bin}(n-1, p)$. This is by the fact that all $n-1$ trips are independent. The probability of any one dog sniffling for the rest of the day is given by $p$.
Thus, $\mathbb E[\mathrm{Y}] = (n-1) \cdot p$.


$$
\begin{align}
n &\geq 2 \\
k &\geq \log_{2}(n) + 1  \overset{?}{\implies} \Pr[\mathrm{Y} = 0] \geq \frac{1}{2} \\
 \\
 \\
\mathbb E[\mathrm{Y}] &= \binom{n}{k} \cdot p \\
&= \frac{n!}{k!(n-k)!}\cdot p \\
&= \frac{n!}{(\log_{2}(n)+1)!\cdot(n-\log_{2}(n)+1)!} \\
 \\
 \\
 \\
 \\
\Pr\left[ \mathrm{X} =  k  \right]
&= 1-\Pr[\mathrm{X \le k-1}]  &\text{(CDF)}\\
&= 1-\sum_{i=0}^{\lfloor \log_{2}(n) \rfloor}\binom{n}{i} \cdot p^i \cdot (1-p)^{n-i} \\
&= 1 - \sum_{i=0}^{\lfloor \log_{2}(n) \rfloor}\binom{n}{i} \cdot \left( \frac{1}{2} \right)^n\\
&= 1-\frac{2^{\lfloor \log_{2}{(n)} \rfloor}}{2^n} \\
&\leq 1 - \frac{n}{2^{n}}\\

 \\
 \\
 \\
\Pr[\mathrm{Y} = 0] &= 1-(\Pr[\mathrm{Y \geq 1}]) &\text{(Markov)}\\
&\geq 1 - \mathbb E[\mathrm{Y}]
\end{align}
$$


___
## (d)

%%let $N=\text{"\# trips"}=n \cdot\binom{n}{k}%%

Let $\text{Z = "\# delightful trips"}$,  where $\mathrm{Z} = \mathrm{Z}_{1} + \dots + \mathrm{Z}_{n-1}$ with $\mathrm{Z}_{i} \sim \mathrm{Bernoulli}(p), \text{ independent}$. We know, that the probability for any one trip to be a delight is $p = 1-\Pr\left[ \mathrm{X} \geq \frac{3}{4}\cdot k \right]$. Thus, $\mathrm{Z} \sim \text{Bin}(n-1, p)$. This is by the fact that all $n-1$ trips are independent.

$$
\begin{align}
k &= 1000\log_{2}(n)  \\
n &\geq 2 \\
 \\
 \\
\text{(1)} &\overset{?}{\implies} \Pr[\mathrm{\mathrm{Z}= n-1}] \geq 0.99 \\
 \\
\text{(1)} &\overset{?}{\implies} \Pr[\mathrm{Z}\geq 1] \leq 0.01 \\
 \\
 \\
%\Pr\left[ \mathrm{X\geq \frac{3}{4}\cdot k} \right] &\leq \frac{\frac{k}{2}}{\frac{3}{4} \cdot k} \\
%&= \frac{1000\log_{2}(n)}{2} \cdot \frac{4}{3\cdot 1000\log_{2}(n)} \\
 \\
 \\
\lim_{ \delta \to 0 } e^{-\frac{1}{3}\delta^2\mathbb E[\mathrm{Z}]}
\end{align}
$$



$\mathbb E[\mathrm{Z}]=N\cdot\frac{1}{4}$


$$
\begin{align}
&\mathbb E[\mathrm{X}] = np = \frac{1000\log_{2}(n)}{2} \\

&\Pr\left[ \mathrm{X} \geq \frac 3 4 \cdot k \right] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$



"i always find it therefore i never search"

