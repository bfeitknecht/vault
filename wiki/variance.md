---
aliases:
  - second central moment
tags:
  - note/wiki
---

The **variance** of a [[random variable]] $X$ captures its *spread* around the [[expectation]], $\mu = \Ex[X]$. It is defined as follows and is equal to the [[covariance]] with itself. For brevity it's often written as $\sigma_{X}^{2}$, as it's the square of the standard deviation.
$$
\begin{align}
\Var[X] &= \Ex[(X - \mu)^{2}]  \\
&= \Ex[X^{2}] - \Ex[X]^{2} \\
&= \Cov[X, X]
\end{align}
$$

In case of a [[discrete]] [[probability space]], it can be computed as $\Var[X] = \sum_{x \in W} (x -\mu)^{2} p_{X}(x)$. For a [[continuous]] probability space, it is likewise defined as $\Var[X] = \int_{\mathbb{R}}(x - \mu)^{2} f_{X}(x) \d x$.

The variance exhibits the following properties.
- it is non-negative, $\Var[X] \geq 0$
- scalars are squared, $\Var[\lambda X] = \lambda^{2}\Var[X]$, which directly results in the identity $\Var[X - Y] = \Var[X] + \Var[Y]$
