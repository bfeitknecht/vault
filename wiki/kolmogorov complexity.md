#todo


The **kolmogorov complexity** of some [[word]] measures the length of the shortest [[program]] that generates that word.

Formally, for $x \in \Sigma_{\mathbb{B}}^{*}$, its kolmogorov complexity $K(x)$ is the *minimum* length of binary encoding of a pascal program that generate $x$.

For a [[natural number]] $n \in \mathbb{N}$, we define its kolmogorov complexity as the length of its binary encoding.
$$
K(n) = K(\mathrm{Bin}(n)) =\lfloor \log_{2}(n) \rfloor + 1 = \lceil \log_{2}(n+1) \rceil
$$


# Properties

Let $A, B$ be programming languages, Then there exists a constant $c_{A, B}$ only depending on $A$ and $B$ such that the kolmogorov complexity in the two programming languages differ by at most that constant, for all words over the boolean alphabet.
$$
| K_{A}(x) - K_{B}(x) | \leq c_{A, B}, \quad \forall x \in \Sigma_{\mathbb{B}}^{*}
$$



# How to Kolmogorov
![[how to kolmogorov]]


# Lemmas

![[hromkovic-TI.pdf#page=52&rect=43,437,416,475|hromkovic-TI, p.37]]
Proof by contradiction, let $C(x_{i\in[2^n]})$ be the shortest [[bitstring]] that generates $x_{i\in[2^n]}$.





# Examples
