#todo 

A **set** $S$ is a *collection of distinct [[element|elements]]*. Examples include the set of [[natural numbers]] $\mathbb N$ or, some [[alphabet]] $\Sigma$ of [[symbols]]. Importantly, the elements of a set can be arbitrarily chosen from some *universe* $U$.

We define a [[arity|binary]] [[predicate (predicate logic)|predicate]] called *elementhood* given by,
$$
E(x,y) = \begin{cases}
1, &\text{if $x$ is element of $y$} \\
0, &\text{else}
\end{cases}
$$
We write that $x$ is element of y in [[infix notation]] as $x \in y$ for $E(x,y)=1$ and $x \not\in y$ for the case that $x$ is not element of y, i.e. $E(x,y)=0$.
We define the *cardinality* of some set as the number of elements it contains, which we denote $|S|$.

![[dmath-script-hs24.pdf#page=54&rect=36,284,388,303|dmath-script-hs24, p.44]]
A set is completely specified by its elements, regardless of how it is described. There is no other relevant information about a set than what its elements are. This implies that two sets that share all elements are the same set, which we can write using the [[transitive]] [[subset]] relation $(A \subseteq B) \wedge (B \subseteq A) \iff A=B$.

Sets are *unordered*, i.e. $\{a, b\} = \{b, a\}$. To denote an *ordered list*, we use pairing.
$$
(a, b) \overset{\text{def.}}= \{ \{a\}, \{a, b\}\}
$$

# Union
![[union (set)]]

# Intersection
![[intersection (set)]]

# Difference
![[difference (set)]]

# Empty Set
![[empty set]]

# Power Set
![[power set]]

# Theorem

Analogous to the lemmas regarding logical operators, we can define the following theorem for operations on sets in set theory.
![[dmath-script-hs24.pdf#page=57&rect=36,196,389,349|dmath-script-hs24, p.47]]








___





[[russell's paradox]]



A ~ B def.: es gibt eine bijektion von A $\rightarrow$ B und B $\rightarrow$ A 


$$\langle G ; *;\odot ;e \rangle \times \langle H;\diamond ;\bowtie ;e'\rangle = \langle G\times H; \Box;\cdot\cdot\cdot; (e,e') \rangle$$
where: 
$$(g,\,h) \Box (g',\,h') = (g*g', h\diamond h')$$

$\mathbb{Z}_2\times \mathbb{Z}_3\simeq\mathbb{Z}_6$
