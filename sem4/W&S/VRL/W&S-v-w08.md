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
- [[central moment]]
- covariance
- standard moment
- vector valued random variable
- joint distribution


# Notes
- variance measures "proximity to expected value", i.e. "spread" of distribution
- $\Var[\lambda X] = \lambda^{2} \Ex[X]^{2}$
- moment of order $p$ is defined as $\Ex[X^{p}]$ for $p \in \mathbb{N}$
- central moment of order $p$, $\Ex[(X - \Ex[X])^{p}]$ with $p \in \mathbb{N}$
- skewness tells about symmetry of distribution, more mass on the left or right of mean
- kurtosis is about the tails of the distribution, "figure" (wide or narrow) of distribution around expectation
- covariance measures "relation" between two random variables
	- similar to scalar product
	- two random variables independent then covariance equals zero
	- only if $X, Y$ are gaussian then $\Cov[X, Y] = 0 \implies X \bot Y$
	- $\Cov[X, X] = \Var[X]$
	- $\Cov[\alpha X, \beta Y] = \alpha \beta \Cov[X, Y]$
- vector valued random variables just come down to destructure and apply definitions
	- discrete case:
		- $P_{X}(x_{1}, \dots x_{n}) = \Pr[X_{1} = x_{1}, \dots X_{n = }x_{n}]$ with $(x_{1},\dots x_{n}) \in \prod_{i \in [n]}W_{i}$
		- $\phi : \mathbb{R}^{n} \to \mathbb{R}$, $\Ex[\phi(X)] = \sum_{x \in \prod_{i \in [n]}W_{i}}P_{X}(x) \phi(x)$
	- 