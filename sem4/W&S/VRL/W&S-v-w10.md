---
name: "[[W&S.md]]"
prev: "[[W&S-v-w09.md]]"
next: "[[W&S-v-w11.md]]"
tags:
  - "#todo"
slides:
---


# Info


# Topics
- estimator
- confidence interval


# Notes
- parameter space contains all possible parameters
- parameter $\theta \in \Theta$ defines family of probability density functions $(\Pr_{\theta})_{\theta \in\Theta}$
- estimator of fixed parameter $\theta$ is a random variable $T : \Omega \to \mathbb{R}$ with $T=t(X_{1}, \dots X_{n})$, where $t : \mathbb{R}^{n} \to \mathbb{R}$
- bias of estimate is difference to actual parameter, $B(T) = \Ex_{\theta}[T] - \theta$
- estimator is unbiased, if $\forall\theta \in \Theta. \Ex_{\theta}[T] = \theta$ or similarly, it's bias is zero for every parameter
- medium squared error (MSE) is defined as $\mathrm{MSE}_{\theta}[T] = \Ex_{\theta}[(T - \theta)^{2}]$
- estimate is a number, $T(\omega) = t(X_{1}(\omega), \dots X_{n}(\omega)) = x \in \mathbb{R}$


---
- for parameter $\theta$ and random variable $X$ corresponding to observed data
	- estimator is random variable from sample space to sample estimates, i.e. $\hat{\theta}(X) : \Omega \to \mathbb{R}$
	- estimate is the fixed value for some observed data value, i.e. for $X = x$ then $\hat{\theta}(x) \in \mathbb{R}$
