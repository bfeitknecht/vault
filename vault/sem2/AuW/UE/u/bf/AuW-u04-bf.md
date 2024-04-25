![[Auw-u04-e.pdf]]

## (a)
Let $\mathrm{X}$ be the random variable denoting the number of streets with flowers. We recall that the trip is a disaster, if $\mathrm{X} \geq \frac 3 4$. To apply Markov's inequality, $\Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t$, we need the expected value $\mathbb{E}[\mathrm{X}]$, meaning the expected number of streets with flowers encountered.
For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence,

$$
\begin{align}
&\mathbb E[\mathrm{X}] = np = \frac{k}{2} \\
&\Pr\left[ \mathrm{X} \geq \frac{3k}{4} \right] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&&\square
\end{align}
$$

___
## (b)
Using Chebyshev's inequality, $\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] \leq \frac{\text{Var}[\mathrm{X}]}{t^2}$, requires $\text{Var}[\mathrm{X}]$.

$$
\begin{align}
\mathrm{Var}[\mathrm{X}] &= \mathbb E[\mathrm{X_{i}^2}] - \mathbb E [\mathrm{X_{i}}]^2 \\
&= \sum_{i=0}^1 i^2 \cdot p - \left(\sum_{i=0}^1 i^2\right)^2 \\
 \\
 \\
 \\
 \\
 \\
\Pr\bigg[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t \cdot\sqrt{ \text{Var}[\mathrm{X}] }\bigg] &\leq \frac{1}{t^2}  \\
\Pr\bigg\left[ \bigg|\mathrm{X} - \frac{k}{2} \bigg| \geq \frac{3k}{4} \cdot \sqrt{ \frac{k}{4} } \bigg \right] &\leq \frac{1}{\left(\frac{3k}{4}\right)^2} = \frac {4}{9k^2} \\
 \\
 \\
 \\
 \\
\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] &\leq \frac{ \mathrm{Var}[\mathrm{X}]}{t^2}  \\
\Pr\bigg\left[ \bigg|\mathrm{X} - \frac{k}{2} \bigg| \geq \frac{3k}{4} \bigg \right] &\leq \frac{\frac {k}{4}}{\big\left( \frac{3k}{4}\big \right)^2} = \frac {k}{4} \cdot \left(\frac{4}{3k}\right)^2 \\
&\leq \frac{16k}{36k^2} = \frac{4}{9k}\\
&&\square
\end{align}
$$

___
## (c)
Let $\text{Y = "\# sniffling dogs"}$, where $\mathrm{Y} := \sum_{i=1}^{n-1}\mathrm{Y}_{i}$ with $\mathrm{Y}_{i} \sim \mathrm{Bernoulli}(p)$, independent. Let $\mathrm{Y}_{i}= \text{"the }i\text{-th dog sniffles"}$. The probability, $p$ for some $i$-th dog to sniffle all day is $\Pr[\mathrm{Y_{i}=1}]=\Pr[\mathrm{X} = k]=\frac{1}{2^k}$, given by all of its trip's streets having flowers. Thus, $\mathrm{Y} \sim \text{Bin}(n-1, p)$. 

The expected number of sniffling dogs is given by
$$
\begin{align}
\mathbb E[\mathrm{Y}] &= \frac{n-1}{2^k} \\
&= \frac{n-1}{2^{\log_{2}(n)+1}} = \frac{n-1}{2n} \\
&< \frac{1}{2} \\
&&\square
\end{align}
$$

Now, we need to show that $k \geq \log_{2}(n) + 1  \implies \Pr[\mathrm{Y} = 0] \geq \frac{1}{2}$.
$$ \begin{align}
\Pr[\mathrm{Y} = 0] &= 1-\Pr[\mathrm{Y \geq 1}] &\text{(Markov)}\\
&\geq 1 - \mathbb E[\mathrm{Y}] \\
&\geq \frac{1}{2} \\
&&\square
\end{align}
$$

___
## (d)
Let $\text{Z = "\# disaster trips"}$,  where $\mathrm{Z} := \sum_{i=1}^{n-1}\mathrm{Z}_{i}$ with $\mathrm{Z}_{i} \sim \mathrm{Bernoulli}(p)$, independent denoting, whether the $i$-th trip was a disaster. We know, that the probability, $p$ for any one trip to be a disaster is $\Pr\left[ \mathrm{X} \geq \frac{3k}{4}\right]\leq\frac{2}{3}$. Thus, $\mathrm{Z} \sim \text{Bin}(n-1, p)$.

We need to show that $k = 1000\log_{2}(n), \ n \geq 2 \implies 1-\Pr[\mathrm{Z}\geq 1] \geq 0.99$.

$$
\begin{align}
&\Pr[\mathrm{Z}\geq 1] \leq 0.01 \\
&\Pr[\mathrm{Z}\geq (1+\delta)\mathbb E[\mathrm{Z}]] \leq e^{-\frac{1}{3}\delta^2\mathbb E[\mathrm{Z}]} \\
 \\
 \\
\Pr\left[ \mathrm{X}\geq \frac{3k}{4} \right] &=
1- \Pr\left[ \mathrm{X \leq \frac{k}{4}-1} \right]  \\
&= \sum_{i=0}^{\lfloor \frac{k}{4} -1 \rfloor } \binom{n}{i} \cdot p^i \cdot (1-p)^{n-i}
%&= \frac{1000\log_{2}(n)}{2} \cdot \frac{4}{3\cdot 1000\log_{2}(n)} \\
 \\
 \\
\end{align}
$$



$\mathbb E[\mathrm{Z}]=\frac{2\cdot(n-1)}{3}$


$$
\begin{align}
&\mathbb E[\mathrm{X}] = np = \frac{1000\log_{2}(n)}{2} \\

&\Pr\left[ \mathrm{X} \geq \frac 3 4 \cdot k \right] \leq \frac{\frac k 2}{\frac 3 4 \cdot k} = \frac {2}{3}\\
&\square
\end{align}
$$










"i always find it therefore i never search"

