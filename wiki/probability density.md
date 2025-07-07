---
aliases:
  - density
  - probability density function
  - PDF
---

The **probability density** of a continuous [[random variable]] $X$ is the non-negative [[function]] $f_{X} : \mathbb{R} \to \mathbb{R}_{+}$. Intuitively, $f_{X}(x) \d x$ represents the probability that $X$ takes a value in the infinitesimal interval $[x, x + \d x]$.

The density satisfies $\int_{-\infty}^{+\infty} f_{X}(x) \d x = 1$, i.e. the total area under the density is equal to one. This corresponds with the fact that *some* outcome of the [[sample space]] must occur. Additionally, it holds that the density at any specific $x$ is equal to zero, $f_{X}(x) = \Pr[X = x] = 0$.