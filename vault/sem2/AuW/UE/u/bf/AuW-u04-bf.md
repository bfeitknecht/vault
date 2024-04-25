![[Auw-u04-e.pdf]]
<div class="page-break" style="page-break-before: always;"></div>

___
## (a) 
Let $\mathrm{X}$ be the random variable denoting the number of streets with flowers. We recall that the trip is a disaster, if $\mathrm{X} \geq \frac 3 4$. To apply Markov's inequality, $\Pr[\mathrm{X} \geq t] \leq \frac {\mathbb E[\mathrm{X}]} t$, we need the expected value $\mathbb{E}[\mathrm{X}]$, meaning the expected number of streets with flowers encountered.
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
Using Chebyshev's inequality, $\Pr[|\mathrm{X} - \mathbb E[\mathrm{X}]| \geq t] \leq \frac{\text{Var}[\mathrm{X}]}{t^2}$, requires $\text{Var}[\mathrm{X}]$. This is given by $\text{Var}[\mathrm{X}]=np(1-p)=\frac{k}{4}$, as $\mathrm{X}\sim \mathrm{Bin}(k, p)$.

$$
\begin{align}
%\Pr\bigg[\mathrm{X} \geq \frac{3k}{4}\bigg] &= \Pr\bigg[\mathrm{X} \geq \frac{2k}{4} + \frac{k}{4}\bigg] =
%\Pr\bigg[\mathrm{X}-\frac{k}{2} \geq \frac{k}{4} \bigg] &\text{(Chebyshev)} \\ \\
\Pr\bigg[\bigg|\mathrm{X} - \frac{k}{2} \bigg| \geq \frac{k}{4}\bigg]  &= \frac{\text{Var}[\mathrm{X}]}{\left(\frac{k}{4}\right)^2}\\
&= \frac{k}{4} \cdot \frac{4^2}{k^2} = \frac{4}{9}\\
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


<div class="page-break" style="page-break-before: always;"></div>

___
## (d)
Let $\text{Z = "\# disaster trips"}$,  where $\mathrm{Z} := \sum_{i=1}^{n-1}\mathrm{Z}_{i}$ with $\mathrm{Z}_{i} \sim \mathrm{Bernoulli}(p)$, independent denoting, whether the $i$-th trip was a disaster. 

We need to show that $k = 1000\log_{2}(n), \ n \geq 2 \implies \Pr[\mathrm{Z}=0] \geq 0.99$.

$$
\begin{align}
\Pr[\mathrm{Z}=0] \geq 0.99 &\implies \Pr[\mathrm{Z}\geq 1] \leq 0.01 \\
%&\Pr[\mathrm{Z}\geq (1+\delta)\mathbb E[\mathrm{Z}]] \leq e^{-\frac{1}{3}\delta^2\mathbb E[\mathrm{Z}]} \\
 \\
p=\Pr\left[ \mathrm{X}\geq \frac{3k}{4} \right] &=
\Pr\left[ \mathrm{X \geq \left(1+\frac{1}{1}\right)\cdot\frac{k}{2}} \right]  \\
&= \Pr\left[ \mathrm{X}\geq \left( 1+\frac{1}{2} \right) \cdot \mathbb E[\mathrm{X}] \right] &\text{(Chernoff)}\\
&\leq e^{- \frac{1}{3} \cdot \frac{1}{4}\cdot\mathbb E[\mathrm{X}]}
= e^{-\frac{k}{24}} = e^{-\frac{1000\log_{2}(n)}{24}} \\
&\leq 2^{-\frac{1000\log_{2}(n)}{24}} = n^{-\frac{1000}{24}} \\
&\leq n^{-41.\bar{6}}
\end{align}
$$



$$
\begin{align}
\Pr[\mathrm{X}\geq 1] &\leq\mathbb E[\mathrm{Z}] &\text{(Markov)} \\
&\leq n \cdot p_{\mathrm{Z}_{i}} \\
&\leq n \cdot n^{-41.\bar{6}} = n^{-40.\bar{6}} \\
&\leq 2^{-40.\bar{6}} &\text{($n\geq2$)} \\
&\leq 0.01 \\
&&\square
\end{align}
$$







"i always find it therefore i never search"