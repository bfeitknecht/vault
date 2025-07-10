---
aliases:
  - expected value
  - mean
---

The **expectation** of some [[random variable]] $X$ is the "mean" of the possible values, weighted by the respective probabilities. It is defined based on the atomicity of the underlying [[probability space]].

For the [[discrete]] case, it is defined as the weighted average of all possible outcomes in $W$ by the [[probability mass]].
$$
\Ex[X] = \sum_{x \in W} x p_{X}(x)
$$
In the [[continuous]] case, it's defined in terms of the [[probability density|probability density]].
$$
\Ex[X] = \int_{\mathbb{R}} x f_{X}(x) \d x
$$

The following properties hold in any case.
- respects of transformation for a [[function]] $\phi: \mathbb{R} \to \mathbb{R}$, i.e. $\Ex[\phi(x)] = \begin{cases} \sum_{x \in W} \phi(x) p_{X}(x) \\  \int_{\mathbb{R}} \phi(x) f_{X}(x) \d x \end{cases}$
	- also applies to joint distributions, i.e. for $\phi : \mathbb{R}^{n} \to \mathbb{R}$ whenever the sum or integral is defined
- exhibits linearity, $\Ex[\alpha X + \beta Y] = \alpha\Ex[X] + \beta \Ex[Y]$
- product of independent random variables factors, $X \bot Y \implies \Ex[XY] = \Ex[X] \Ex[Y]$



$$
Pr[X_1 <= x_1, ... X_n <= x_n] = integral_(-oo)^x_1 dots.c integral_(-oo)^x_n f_bf(X)(bf(x)) dif x_n ... dif x_1
$$

