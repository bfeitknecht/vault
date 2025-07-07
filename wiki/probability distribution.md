---
aliases:
  - distribution
  - cumulative distribution function
  - CDF
---

The **distribution function** of a [[random variable]] $X$ on $E = \mathbb{R}$ is the function defined by $F_{X}(x) = \Pr[X \leq x]$. It is right-continuous and monotone increasing, i.e. [[right continuous with left limit (RCLL)]], thus it is a [[bijection]] and has an [[inverse (function)]] $F_{X}^{-1}$. Additionally, it satisfies the following two properties.
- $\lim_{ x \to -\infty }f(x) = 0$
- $\lim_{ x \to \infty } f(x) = 1$

For a discrete random variable $X : \Omega \to W \subset \mathbb{R}$ with finite or countable domain, its distribution (probability mass function) is the sequence $(p(x))_{x \in W}$ such that $\forall x \in W. p(x) = \Pr[X =x]$. Specifically, it satisfies $\sum_{x \in W} p(x) = 1$. Its distribution function is then $F_{X}(x) = \sum_{y \in W_{\leq x}}p(y)$.


For a continuous random variable, the distribution function is the area under its [[probability density|density]] up to $x$ and hence given by $F_{X}(x) = \int_{-\infty}^{x} f(x) \d x$.