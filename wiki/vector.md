
# What is a vector?
A vector $v$ is just a list of $m$ [[real numbers]], $v \in \mathbb R^m$, and can be interpreted as an $m$-dimensional point or an arrow from the [[origin]] to that point (motion).


# What can you do with a vector?

## Vector Addition
Let $v, w \in \mathbb R^m, v=[a_{1} \dots a_{m}], w=[b_{1} \dots b_{m}]$, then $v+w = [a_{1} + b_{1} \dots a_{m} + b_{m}]$. Basically, putting one arrow's base on the tip of the other and evaluating the result.


## Scalar Multiplication
Let $\lambda \in \mathbb R$. For some $v = [a_{1} \dots a_{m}] \in \mathbb R^m$, then $\lambda v = [\lambda a_{1} \dots \lambda a_{m}]$. Basically, stretching or squishing a vector by some real amount.


## Linear Combinations
Combines scalar multiplication and vector addition.

For some specific choices for $\lambda, \mu$ these special cases of combinations follow.
![[LinAlg-plan-w0.pdf#page=4&rect=96,379,517,512|LinAlg-plan-w0, p.4]]

# Scalar Product / Dot Product

![[scalar product]]

## Euclidian Norm
Defines the "length" of a vector in an $m$-dimensional space.

### Def. 1.11![[LinAlg-plan-w1.pdf#page=2&rect=158,425,435,461|LinAlg-plan-w1, p.2]]


# Notation

We can denote a set of vectors of [[order]] $n$ $\{v_{1}, v_{2}, \dots, v_{n}\} = \{v_{j} | j \in [n]\}$, where $[n] = \{1, 2, \dots, n\}$.

A single vector $v$ ind $m$-dimensional space is denoted $v=\begin{bmatrix} v_{1}\\ v_{2}\\ \vdots\\ v_{m} \end{bmatrix} =[v_{i}]^{m}_{i=1}$.