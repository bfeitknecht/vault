---
aliases: 
tags:
  - note/wiki
---

The **covariance** measures the joint variability of two [[random variable|random variables]] $X, Y$ with finite [[second moment]] $\Ex[X^{2}], \Ex[Y^{2}] < \infty$. It is defined as follows.
$$
\Cov(X, Y) = \Ex[XY] - \Ex[X] \Ex[Y]
$$

Specifically, if the two random variables are independent then the covariance is equal to zero.
$$
X \bot Y \implies \Cov(X, Y) = 0
$$
The reciprocal implication is not generally true. A stronger version is given for two arbitrary piecewise continuous and bounded [[function|functions]] $\phi, \psi$.
$$
X \bot Y \iff \Cov(\phi(X), \psi(Y)) = 0
$$
