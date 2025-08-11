
> [!danger] TO-DO
> - [x] joint distribution ✅ 2025-07-09
> - [x] expectation ✅ 2025-07-08
> - [x] variance ✅ 2025-07-08
> - [x] covariance ✅ 2025-07-09
> - [-] skewness, kurtosis, moments
> - [x] distributions ✅ 2025-08-11
> - [x] laplace model ✅ 2025-08-11
> - [x] estimator ✅ 2025-08-11
> - [x] maximum likelihood estimator ✅ 2025-08-11
> - [x] MSE ✅ 2025-08-11
> - [x] PMF ✅ 2025-08-11
> - [-] correlation
> - [x] marginal distribution ✅ 2025-08-11
> - [x] law of large numbers ✅ 2025-08-11
> - [x] central limit theorem ✅ 2025-08-11


> [!quote] Exams
> - [ ] HS24
> - [x] FS24 ✅ 2025-08-11
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
The **likelihood function** on a [[probability space]] with parameter space $\Theta$ is defined in terms of the [[joint distribution]], based on the space's atomicity.


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

