---
aliases:
  - distribution
  - cumulative distribution function
  - CDF
---

The **distribution function** of a [[random variable]] $X$ on $E = \mathbb{R}$ is the function defined by $F_{X}(x) = \Pr[X \leq x]$. It is right-continuous and monotone increasing, i.e. [[right continuous with left limit (RCLL)]], thus it is a [[bijection]] and has an [[inverse (function)]] $F_{X}^{-1}$. Additionally, it satisfies the following two properties.
$$
\begin{align}
\lim_{ x \to -\infty }f(x) &= 0 \\
\lim_{ x \to \infty } f(x) &= 1
\end{align}
$$

For a continuous random variable, the distribution function is the area under its [[probability density|density]] and hence given by #todo 