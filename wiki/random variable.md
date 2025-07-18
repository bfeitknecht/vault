---
aliases:
  - random variables
  - r.v.
---

A **random variable** on a [[probability space]] $(\Omega, \mathcal{F}, \Pr)$ is a [[function|map]] $X : \Omega \to \mathbb{R}$ such that $\forall a \in \mathbb{R}. \{  \omega \in \Omega \mid X(\omega) \leq a \} \in \mathcal{F}$. A random variable is [[discrete]], if it's [[sample space]] is finite or countable. Otherwise it is [[continuous]].

Let $(X_{i})_{n} = X_{1}, \dots X_{n}$ be random variables on some probability space. Then they are **independent** if, for any random [[vector]] of possible values, the [[joint distribution]] is equal to the product of the individual distributions.
$$
\forall[x_{i}]_{n} \in \mathbb{R}^{n}.\Pr[X_{1} \leq x_{1}, \dots X_{n} \leq x_{n}] = \prod_{i \in [n]} \Pr[X_{i} \leq x_{i}]
$$

An infinite sequence $(X_{i})_{\infty}$ of random variables is said to be independent if $(X_{i})_{n}$ are independent for every $n \in \mathbb{N}$ and **independent and identically distributed (i.i.d.)** if they are independent and have the same [[probability distribution|distribution]], $\forall i,j. F_{X_{i}} = F_{X_{j}}$.

Random variables can be transformed, specifically for $\phi : \mathbb{R}^{k} \to \mathbb{R}$ then $\phi(X_{1}, \dots X_{k}) = \phi \circ (X_{1}, \dots X_{k})$.

# Examples
## Discrete
### Bernoulli
![[bernoulli distribution]]

### Binomial
![[binomial distribution]]

### Geometric
![[geometric distribution]]

### Poisson
![[poisson distribution]]


## Continuous

### Uniform
![[uniform distribution]]

### Normal
![[normal distribution]]

### Exponential
![[exponential distribution]]

