
> [!danger] TO-DO
> - [ ] joint distribution
> - [ ] expectation
> - [ ] variance
> - [ ] covariance
> - [ ] skewness, kurtosis, moments
> - [ ] distributions
> - [ ] laplace model
> - [ ] estimator
> - [ ] MSE


# Joint Distribution
The **joint distribution** of $n$ discrete [[random variable|random variables]] with $\forall X_{i}. \Pr[X_{i} \in W_{i}] = 1$ for some $W_{i} \subset \mathbb{R}$ *finite* or *countable* is the collection $p = (p(x_{1}, \dots x_{n}))_{x_{i}\in W_{i}}$, where $p(x_{1}, \dots x_{n}) = \Pr[X_{1}=x_{1}, \dots X_{n} = x_{n}]$.

The continuous random variables $(X_{i})_{n}$ have a **joint density** $f : \mathbb{R}^{n} \to \mathbb{R}_{+}$, if it satisfies the following.
$$
\Pr[X_{1} \leq a_{1}, \dots X_{n} \leq a_{n}] = \int_{-\infty}^{a_{1}} \cdots \int_{-\infty}^{a_{n}} f(x_{1}, \dots x_{n}) \d x_{n} , \dots \d x_{1}
$$


# Likelihood
The **likelihood function** on a [[probability space]] $\Omega$ with parameter space $\Theta$ is defined in terms of the [[joint distribution]], based on the space's atomicity.

# Estimator
#todo 


# Distributions

| Distribution                   | Expectation         | Variance                |
| ------------------------------ | ------------------- | ----------------------- |
| $\mathrm{Ber}(p)$              | $p$                 | $p(1-p)$                |
| $\mathrm{Bin}(n, p)$           | $np$                | $np(1-p)$               |
| $\mathrm{Geom}(p)$             | $\frac{1}{p}$       | $\frac{1-p}{p^{2}}$     |
| $\mathrm{Pois}(\lambda)$       | $\lambda$           | $\lambda$               |
| $\mathcal{U}([a, b])$          | $\frac{a+b}{2}$     | $\frac{(b-a)^{2}}{12}$  |
| $\mathcal{N}(\mu, \sigma^{2})$ | $\mu$               | $\sigma^{2}$            |
| $\mathrm{Exp}(\lambda)$        | $\frac{1}{\lambda}$ | $\frac{1}{\lambda^{2}}$ |
