---
aliases:
  - CLT
tags:
  - note/wiki
---

The **central limit theorem** states, that for $(X_{i})_{\mathbb{N}}$ i.i.d. [[random variable|random variables]] with $\Ex[X_{i}^{2}] < \infty$ the fluctuations of the sample mean $\overline{X}_{n} = \frac{S_{n}}{n}$ around the true [[expectation|mean]] $\mu = \Ex[X_{i}]$ when scaled by $\sqrt{ n\sigma^{2} }$ are approximately [[normal distribution|gaussian]]. It is closely related to the [[law of large number]]. Let $S_{n} = \sum_{i \in [n]} X_{i}$ and $\sigma^{2} = \Var[X_{i}]$. $\Phi$ is the [[probability distribution|CDF]] of the standard [[normal distribution]]. 
$$
\Pr\left[ \frac{S_{n}-n\mu}{\sqrt{ n\sigma^{2} }} \leq a \right] \overset{\infty}{\to} \Phi(a)
$$