![[Auw-u04-e.pdf]]

## (a)
Let $X$q be the expected value of streets with flowers. We recall that the trip is a disaster, if $X \geq \frac 3 4$. Using Markov's inequality: $\Pr[X \geq t] \leq \frac {\mathbb E[X]} t$, we can conclude that the probability for a disastrous trip, $\Pr[X \geq \frac 3 4]$ is bounded by $\frac{\mathbb E[X]} {\frac 3 4} = \frac{4 \cdot \mathbb E[X]} 3$. All we need to do is calculate the expected value of $X$, meaning the expected number of streets with flowers encountered. For this, we can use linearity of expectation, since the probability for a street to have flowers is binomially distributed. Hence, $\mathbb E[X] = np = \frac k 2$.
Thus follows:

$$
\begin{align}
& \Pr[X \geq t] \leq \frac {\mathbb E[X]} t \overset \cdot \implies\\
&\Pr[X \geq \frac 3 4] \leq \frac{\frac k 2}{\frac 3 4} = \frac {4}{6} \cdot k \\
&\square
\end{align}
$$

___
## (b)
Since $\text{Var}[X]= np (1-p)$ for binomial distributions, the variance in our case is $\frac k 2 \cdot \frac 1 2 = \frac k 4$.

$$
\begin{align}
&\Pr[X - \mathbb E[X] \geq t] \leq \frac{\text{Var}[X]}{t^2} \overset \cdot \implies \\
&\Pr[X - \frac{4k}{6} \geq \frac 3 4] \leq \frac{\frac k 4}{\big(\frac 3 4\big)^2} = \frac {4^2 \cdot k} {3^2 \cdot4} = \frac {4}{9} \cdot k\\
&\square
\end{align}
$$

___
## (c)



___
## (d)






"i always find it therefore i never search"