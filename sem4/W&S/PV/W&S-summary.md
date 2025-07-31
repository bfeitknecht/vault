
> [!danger] TO-DO
> - [x] joint distribution ✅ 2025-07-09
> - [x] expectation ✅ 2025-07-08
> - [x] variance ✅ 2025-07-08
> - [x] covariance ✅ 2025-07-09
> - [ ] skewness, kurtosis, moments
> - [ ] distributions
> - [ ] laplace model
> - [ ] estimator
> - [ ] MSE
> - [ ] PMF
> - [ ] correlation
> - [ ] marginal distribution
> - [ ] law of large numbers
> - [ ] central limit theorem


> [!quote] Exams
> - [ ] HS24
> - [ ] FS24
> - [ ] HS23
> - [ ] FS23
> - [ ] HS22
> - [ ] FS22
> - [ ] HS21
> - [ ] FS21
> - [ ] HS20
> - [ ] FS20
> - [ ] HS19
> - [ ] FS19

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
[[joint distribution]]
[[marginal distribution]]

| Distribution                   | Expectation $\Ex[X]$ | Variance $\Var[X]$      | Mass $p_{X}(k)$ / Density $f_{X}(x)$             | Distribution $F_{X}(x)$                                   |
| ------------------------------ | -------------------- | ----------------------- | ------------------------------------------------ | --------------------------------------------------------- |
| $\Ber(p)$                      | $p$                  | $p(1-p)$                | $pk + (1 -p) (1 - k)$                            | $p \mathbb{1}_{k \geq 1} + (1 - p) \mathbb{1}_{k \geq 0}$ |
| $\Bin(n, p)$                   | $np$                 | $np(1-p)$               | ${n \choose k} p^{k} (1-p)^{n-k}$                |                                                           |
| $\Geom(p)$                     | $\frac{1}{p}$        | $\frac{1-p}{p^{2}}$     | $p(1 - p)^{k - 1}$                               |                                                           |
| $\Pois(\lambda)$               | $\lambda$            | $\lambda$               | $\frac{\lambda^{k} e^{-\lambda}}{k!}$            |                                                           |
| $\mathcal{U}([a, b])$          | $\frac{a+b}{2}$      | $\frac{(b-a)^{2}}{12}$  |                                                  |                                                           |
| $\mathcal{N}(\mu, \sigma^{2})$ | $\mu$                | $\sigma^{2}$            |                                                  |                                                           |
| $\Exp(\lambda)$                | $\frac{1}{\lambda}$  | $\frac{1}{\lambda^{2}}$ | $\lambda \exp(-\lambda x) \mathbb{1}_{x \geq 0}$ | $1-e^{-\lambda x}$                                        |



# PVW


| from $n$ take $k$               | with repetition       | without repetition                     |
| ------------------------------- | --------------------- | -------------------------------------- |
| **with order** (combination)    | $n^{k}$               | $\frac{n!}{(n-k)!}$                    |
| **without order** (permutation) | ${{n+k-1}\choose{k}}$ | ${{n}\choose{k}} =\frac{n!}{n!(n-k)!}$ |


- geometric distribution models waiting time until success of discrete experiment
- exponential is the same for continuous case


> for normal distribution $X \sim \mathcal{N}(\mu, \sigma^{2})$ then by variance addition laws, $X = \sigma Z + \mu \implies Z = \frac{X - \mu}{\sigma}$ for $Z \sim \mathcal{N}(0, 1)$



continuous r.v. has continuous CDF

$\Var[X + Y] = \Var[X] + \Var[Y] + 2\Cov[X, Y]$




## MLE
1. likelihood function
2. log likehlihood
3. partially derive log L wrt parameter of interest
4. set equal to zero and solve for parameter of interest

## Confidence Interval
$I = [A, B], A = a(X_{1}, \dots X_{n}), B = b(X_{1}, \dots X_{n})$
$\Pr_{\theta}[\theta \in I] = \Pr[A \leq \theta \leq B] \geq 1- \alpha$ for $\alpha \in [0, 1]$

like estimator but gives range instead of point
Pr theta of subset of range has smaller probability

confidence interval typically symmetric

put random variable (sample mean) in middle of probability space measure function, only want one occurrence of it



## Tests

decide whether theta is in Theta zero or alternative

T is test statistic, r.v. 
critical region subset of R

