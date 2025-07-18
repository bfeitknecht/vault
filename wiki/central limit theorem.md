---
aliases:
  - CLT
tags:
  - note/wiki
---

The **central limit theorem** states, that for $(X_{i})_{\mathbb{N}}$ i.i.d. [[random variable|random variables]] with finite second moment $\Ex[X_{i}^{2}] < \infty$, the fluctuations of the samples' $S_{n} = \sum_{i \in [n]} X_{i}$ mean $\overline{X}_{n} = \frac{S_{n}}{n}$ around the true [[expectation|mean]] $\mu = \Ex[X_{i}]$ when scaled by $\sqrt{ n\sigma^{2} }$ are approximately [[normal distribution|gaussian]]. It is closely related to the [[law of large number]]. Let $\sigma^{2} = \Var[X_{i}]$. Here, $\Phi$ is the [[probability distribution|CDF]] of the standard [[normal distribution]]. 
$$
\Pr\left[ \frac{S_{n}-n\mu}{\sqrt{ n\sigma^{2} }} \leq a \right] \overset{\infty}{\to} \Phi(a)
$$
