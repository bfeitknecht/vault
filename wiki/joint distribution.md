---
aliases:
  - joint distribution function
  - joint probability distribution
tags:
  - note/wiki
---
![[joint-distribution.svg|400]]

The **joint distribution** of a family of [[random variable|random variables]], $(X_{i})_{n}$ on the same [[probability space]] is the [[probability distribution]] indicating that each of the variables falls into a specific continuous range or discrete set.

Expressed in terms of the underlying [[probability measure]] the joint [[probability distribution|  distribution]] can be defined as follows. Let $\mathbf{X} = (X_{i})_{n}$ be the random [[vector]] of the variables.
$$
F_{\mathbf{X}}(\mathbf{x}) = \Pr[X_{1} \leq x_{1}, \dots X_{n} \leq x_{n}]
$$

The joint [[probability mass|mass]] of discrete random variables $(X_{i})_{n}$ such that $\forall X_{i}. \Pr[X_{i} \in W_{i}] = 1$ for some $W_{i} \subset \mathbb{R}$ *finite* or *countable* is the collection $p = (p(x_{1}, \dots x_{n}))_{x_{i}\in W_{i}}$, where $p(x_{1}, \dots x_{n}) = \Pr[X_{1}=x_{1}, \dots X_{n} = x_{n}]$.


The continuous random variables $(X_{i})_{n}$ have a joint [[probability density|density]] $f : \mathbb{R}^{n} \to \mathbb{R}_{+}$, if it satisfies the following.
$$
\Pr[X_{1} \leq a_{1}, \dots X_{n} \leq a_{n}] = \int_{-\infty}^{a_{1}} \cdots \int_{-\infty}^{a_{n}} f(x_{1}, \dots x_{n}) \d x_{n} , \dots \d x_{1}
$$
