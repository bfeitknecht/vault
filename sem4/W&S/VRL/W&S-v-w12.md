---
name: "[[W&S.md]]"
prev: "[[W&S-v-w11.md]]"
next: "[[W&S-v-w13.md]]"
tags:
  - todo
slides:
---


# Info


# Topics
- statistical hypothesis test
- significance level
- power


# Notes
- test is a pair $(T, K)$, where
	- $T$ is a random variable (more precisely, estimator) of the form $T=t(X_{1},\dots X_{n})$, called test statistic
	- $K \subseteq \mathbb{R}$ is a deterministic subset of the real numbers, the critical region
- the null-hypothesis $H_{0}$ is rejected, if $T(\omega) \in K$
- otherwise it is accepted
- type 1 error (false negative)
	- happens for $\theta \in \Theta_{0}$ and $T \in K$
	- $\Pr_{\theta}[T \in K]$ is probability of type 1 error for $\theta \in \Theta_{0}$
- type 2 error (false positive)
	- happens for $\theta \in \Theta_{1}$ and $T \not\in K$
	- $\Pr_{\theta}[T \not\in K] = 1 - \Pr_{\theta}[T \in K]$ is probability of type 2 error for $\theta \in \Theta_{1}$
- statistical test $(T, K)$ has the the following two properties
	- significance level, $\alpha \in (1,0)$, if $\forall \theta \in \Theta_{0}.\Pr_{\theta}[T \in K] \leq \alpha$, to reduce type 1 errors
	- power, $\beta :\Theta_{1} \to [0,1]$, where $\beta(\theta) = \Pr_{\theta}[T \in K]$, to reduce type 2 errors
- $(T, (K_{t})_{t \geq 0})$ is an ordered family of tests with respect to $T$ if $K_{t} \subset \mathbb{R}$ and $s \leq t \implies K_{t} \subset K_{s}$
	- typical examples include LHS $K_{t} = (-\infty, t)$, RHS $K_{t} = (\infty, t)$ and symmetric tests 
- p-value for ordered family of tests is random variable defined as $G(T)$, where $G : \mathbb{R}_{+} \to [0,1]$ with $G(t) = \Pr_{\theta_{0}}[T \in K_{t}]$