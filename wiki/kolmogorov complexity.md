#todo 


The **kolmogorov complexity** of some [[word]] measures the length of the shortest [[program]] that generates that word.

Formally, for $x \in \Sigma_{\mathbb{B}}$, its kolmogorov complexity $K(x)$ is the *minimum* length of binary encoding of pascal programs that generate $x$.

For a [[natural number]] $n \in \mathbb{N}$, we define its kolmogorov complexity as the length of its binary encoding.
$$
K(n) = K(\mathrm{Bin}(n)) =\lfloor \log_{2}(n) \rfloor + 1 = \lceil \log_{2}(n+1) \rceil
$$



# How to Kolmogorov
![[how to kolmogorov]]


# Lemmas

![[hromkovic-TI.pdf#page=52&rect=43,437,416,475|hromkovic-TIN, p.37]]
Proof by contradiction, let $C(x_{i\in[2^n]})$ be the shortest [[bitstring]] that generates $x_{i\in[2^n]}$. 



![[hromkovic-TI.pdf#page=53&rect=41,329,434,398|hromkovic-TIN, p.38]]



