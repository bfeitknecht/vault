---
aliases: 
tags:
  - note/wiki
---

![[bernoulli-distribution.png|400]]
The **bernoulli distribution** of a [[discrete]] [[random variable]] encapsulates the boolean valued single execution of an experiment with probability of success $p$ and probability of failure $q = (1-p)$. The notation is $X \sim \Ber(p)$. Its relevant definitions are given below.

| Function                          | Definition                                                                                   |
| --------------------------------- | -------------------------------------------------------------------------------------------- |
| [[probability mass\|PMF]]         | $p_{X}(k) = \begin{cases} p & k = 1 \\ q & \text{ otherwise}\end{cases}$                     |
| [[probability distribution\|CDF]] | $F_{X}(k) = \begin{cases}0 & k < 0 \\ q & k \in [0, 1[ \\ 1  & \text{otherwise} \end{cases}$ |
| [[expectation]]                   | $\Ex[X] = p$                                                                                 |
| [[variance]]                      | $\Var[X] = pq$                                                                               |

