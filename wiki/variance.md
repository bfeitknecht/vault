---
aliases:
  - second central moment
tags:
  - note/wiki
---

The **variance** of a [[random variable]] $X$ captures its *spread* around the [[expectation]], $\mu = \Ex[X]$. It is defined as follows and is equal to the [[covariance]] to itself. For brevity it's often written as $\sigma_{X}^{2}$, in light of it being the square of the standard deviation.
$$
\Var[X] = \Ex[(X - \mu)^{2}] = \Cov[X, X]
$$

Application of some identities leads to the equality $\Var[X] = \Ex[X^{2}] - \Ex[X]^{2}$.

In case of a [[discrete]] [[probability space]], it can be computed as $\Var[X] = \sum_{x \in W} (x -\mu)^{2} p_{X}(x)$. For a [[continuous]] probability space, it is likewise defined as $\Var[X] = \int_{\mathbb{R}}(x - \mu)^{2} f_{X}(x) \d x$.
