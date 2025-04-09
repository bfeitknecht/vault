---
name: "[[W&S.md]]"
prev: "[[W&S-v-w07.md]]"
next: "[[W&S-v-w09.md]]"
slides:
---


# Info
- "It's a perfect stick."


# Topics
- variance
- moment
- central moment
- covariance
- standard moment


# Notes
- variance measures "proximity to expected value", i.e. "spread" of distribution
- $\Var[\lambda X] = \lambda^{2} \mathrm{E}[X]^{2}$
- moment of order $p$ is defined as $\mathbb{E}[X^{p}]$ for $p \in \mathbb{N}$
- central moment of order $p$, $\mathbb{E}[(X - \mathbb{E}[X])^{p}]$ with $p \in \mathbb{N}$
- skewness tells about symmetry of distribution, more mass on the left or right of mean
- kurtosis is about the tails of the distribution, "figure" (wide or narrow) of distribution around expectation
- covariance measures "relation" between two random variables
	- similar to scalar product
	- two random variables independent then covariance equals zero
	- only if $X, Y$ are gaussian then $\Cov[X, Y] = 0 \implies X \bot Y$
	- $\Cov[X, X] = \Var[X]$
	- $\Cov[\lambda X, \mu Y] = \lambda \mu \Cov[X, Y]$
	- 