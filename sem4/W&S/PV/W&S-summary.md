
> [!danger] TO-DO
> - [ ] joint distribution
> - [ ] expectation
> - [ ] variance
> - [ ] covariance
> - [ ] skewness, kurtosis, moments
> - [ ] distributions
> - [ ] laplace model


# Joint Distribution
The **joint distribution** of $n$ discrete [[random variable|random variables]] with $\forall X_{i}. \Pr[X_{i} \in W_{i}] = 1$ for some $W_{i} \subset \mathbb{R}$ *finite* or *countable* is the collection $p = (p(x_{1}, \dots x_{n}))_{x_{i}\in W_{i}}$, where $p(x_{1}, \dots x_{n}) = \Pr[X_{1}=x_{1}, \dots X_{n} = x_{n}]$.

The continuous random variables $(X_{i})_{n}$ have a **joint density** $f : \mathbb{R}^{n} \to \mathbb{R}_{+}$, if it satisfies the following.
$$
\Pr[X_{1} \leq a_{1}, \dots X_{n} \leq a_{n}] = \int_{-\infty}^{a_{1}} \cdots \int_{-\infty}^{a_{n}} f(x_{1}, \dots x_{n}) \d x_{n} , \dots \d x_{1}
$$


# Likelihood
The **likelihood function** on a [[probability space]] $\Omega$ with parameter space $\Theta$ is defined in terms of the [[joint distribution]], based on the space's atomicity.

# Estimator



