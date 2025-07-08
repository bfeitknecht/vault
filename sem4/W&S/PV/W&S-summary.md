
> [!danger] TO-DO
> - [ ] joint distribution
> - [x] expectation ✅ 2025-07-08
> - [x] variance ✅ 2025-07-08
> - [ ] covariance
> - [ ] skewness, kurtosis, moments
> - [ ] distributions
> - [ ] laplace model
> - [ ] estimator
> - [ ] MSE
> - [ ] PMF
> - [ ] correlation


# Joint Distribution
The **joint distribution** of $n$ discrete [[random variable|random variables]] with $\forall X_{i}. \Pr[X_{i} \in W_{i}] = 1$ for some $W_{i} \subset \mathbb{R}$ *finite* or *countable* is the collection $p = (p(x_{1}, \dots x_{n}))_{x_{i}\in W_{i}}$, where $p(x_{1}, \dots x_{n}) = \Pr[X_{1}=x_{1}, \dots X_{n} = x_{n}]$.

The continuous random variables $(X_{i})_{n}$ have a **joint density** $f : \mathbb{R}^{n} \to \mathbb{R}_{+}$, if it satisfies the following.
$$
\Pr[X_{1} \leq a_{1}, \dots X_{n} \leq a_{n}] = \int_{-\infty}^{a_{1}} \cdots \int_{-\infty}^{a_{n}} f(x_{1}, \dots x_{n}) \d x_{n} , \dots \d x_{1}
$$


# Likelihood
The **likelihood function** on a [[probability space]] $\Omega$ with parameter space $\Theta$ is defined in terms of the [[joint distribution]], based on the space's atomicity.


# Distributions

[[bernoulli distribution]]
[[binomial distribution]]
[[geometric distribution]]
[[poisson distribution]]
[[uniform distribution]]
[[normal distribution]]
[[exponential distribution]]


| Distribution                   | Expectation $\Ex[X]$ | Variance $\Var[X]$      | mass $p_{X}(k)$ / density $f_{X}(x)$                                                  | distribution $F_{X}(x)$ |
| ------------------------------ | -------------------- | ----------------------- | ------------------------------------------------------------------------------------- | ----------------------- |
| $\mathrm{Ber}(p)$              | $p$                  | $p(1-p)$                |                                                                                       |                         |
| $\mathrm{Bin}(n, p)$           | $np$                 | $np(1-p)$               | ${n \choose k} p^{k} (1-p)^{n-k}$                                                     |                         |
| $\mathrm{Geom}(p)$             | $\frac{1}{p}$        | $\frac{1-p}{p^{2}}$     |                                                                                       |                         |
| $\mathrm{Pois}(\lambda)$       | $\lambda$            | $\lambda$               | $\frac{\lambda^{k} e^{-\lambda}}{k!}$                                                 |                         |
| $\mathcal{U}([a, b])$          | $\frac{a+b}{2}$      | $\frac{(b-a)^{2}}{12}$  |                                                                                       |                         |
| $\mathcal{N}(\mu, \sigma^{2})$ | $\mu$                | $\sigma^{2}$            |                                                                                       |                         |
| $\mathrm{Exp}(\lambda)$        | $\frac{1}{\lambda}$  | $\frac{1}{\lambda^{2}}$ | $\begin{cases}\lambda e^{-\lambda x}, & x \geq 0 \\ 0, & \text{otherwise}\end{cases}$ | $1-e^{-\lambda x}$      |




# PVW
 
Is $\mathcal{F}$ a sigma algebra?
- check $\Omega$ and $\varnothing$, then conjunction
- $\mathcal{P}(\Omega)$, $\{ \varnothing, A, A^{\complement}, \Omega \}$, $\{ \varnothing, \Omega \}$ are trivial sigma algebras

For an independent family of events $(A_{i})_{i \in \mathcal{I}}$, it holds that $\forall \mathcal{J} \in \mathcal{P}(\mathcal{I}.) \Pr\left[ \bigcap_{j \in \mathcal{J}} A_{j} \right] = \prod_{j \in \mathcal{J}} A_{j}$. That is to say, pairwise independence does not imply total independence.


| from $n$ take $k$               | with repetition       | without repetition                     |
| ------------------------------- | --------------------- | -------------------------------------- |
| **with order** (combination)    | $n^{k}$               | $\frac{n!}{(n-k)!}$                    |
| **without order** (permutation) | ${{n+k-1}\choose{k}}$ | ${{n}\choose{k}} =\frac{n!}{n!(n-k)!}$ |


- geometric distribution models waiting time until success of discrete experiment
- exponential is the same for continuous case


> for normal distribution $X \sim \mathcal{N}(\mu, \sigma^{2})$ then by variance addition laws, $X = \sigma Z + \mu \implies Z = \frac{X - \mu}{\sigma}$ for $Z \sim \mathcal{N}(0, 1)$

