#todo 

A **set** $S$ is a *collection of distinct [[element|elements]]*. Examples include the set of [[natural numbers]] $\mathbb N$ or, some [[alphabet]] $\Sigma$ of [[symbols]]. Importantly, the elements of a set can be arbitrarily chosen from some *universe* $U$.

We define a [[arity|binary]] [[predicate (predicate logic)|predicate]] called *elementhood* given by,
$$
E(x,y) = \begin{cases}
1, &\text{if $x$ is element of $y$} \\
0, &\text{else}
\end{cases}
$$
We write that x is element of y in [[infix notation]] as $x \in y$ for $E(x,y)=1$ and $x \not\in y$ for the case that x is not element of y, i.e. $E(x,y)=0$. We define the *cardinality* of some set as the number of elements it contains, which we denote $|S|$.

![[dmath-script-hs24.pdf#page=54&rect=36,284,388,303|dmath-script-hs24, p.44]]
A set is completely specified by its elements, regardless of how it is described. There is no other relevant information about a set than what its elements are. This implies that two sets that share all elements are the same set, which we can write using the [[transitive]] [[subset]] relation $(A \subseteq B) \wedge (B \subseteq A) \iff A=B$.

Sets are *unordered*, i.e. $\{a, b\} = \{b, a\}$. To denote an *ordered list*, we use pairing.
$$
(a, b) \overset{\text{def.}}= \{ \{a\}, \{a, b\}\}
$$

The **union** and **intersection** of two sets $A, B$ are defined as all elements that are in $A$ *or* $B$ and all elements that are in $A$ *and* $B$.
$$
\begin{align}
A \cup B &\overset{\text{def.}}{=} \{ x \mid x \in A \vee x \in B\} \\
A \cap B &\overset{\text{def.}}{=} \{ x \mid x \in A \wedge x \in B\}
\end{align}
$$
We can extend this definition from two to an arbitrary collection of sets. Let $\mathcal A$ be a non-empty set of sets, each with finite or infinite cardinality. Then we define the union of all sets in $\mathcal A$ as the set of all $x$ that are an element of at least one of the sets in $\mathcal A$.
$$
\bigcup \mathcal A \overset{\text{def.}}{=} \{x \mid \exists A \in \mathcal A, x \in A\}
$$
Similarly, we define the intersection of all sets in $\mathcal A$.
$$
\bigcap \mathcal A \overset{\text{def.}}{=} \{ x \mid \exists A \in \mathcal A, x \in A\}
$$

The difference of two sets, denoted with $B \setminus A$ or $B -A$ is the collection of elements in $B$ that are not in $A$.
$$
B \setminus A \overset{\text{def.}}{=} \{x \in B \mid x \not\in A\}
$$

![[empty set]]

The **power set** of some set $A$ is the set of all subsets of $A$, which we denote by $\mathcal P(A) \overset{\text{def.}}{=} \{S \mid S \subseteq A\}$.



[[power set]] 

[[russell's paradox]]













A ~ B def.: es gibt eine bijektion von A $\rightarrow$ B und B $\rightarrow$ A 





$$\langle G ; *;\odot ;e \rangle \times \langle H;\diamond ;\bowtie ;e'\rangle = \langle G\times H; \Box;\cdot\cdot\cdot; (e,e') \rangle$$
where: 
$$(g,\,h) \Box (g',\,h') = (g*g', h\diamond h')$$

$\mathbb{Z}_2\times \mathbb{Z}_3\simeq\mathbb{Z}_6$



















$$
\forall x \exists y (P(x, f(x)) \lor \lnot P(x,y)) \equiv \top
$$

weil, entweder $\exists x | P(x, f(x)) \equiv 1$, oder $f(x)$ macht $P$ falsch, in diesem fall kann für $y$  $f(x)$ gewählt werden, was $\lnot P$ wahr macht.


$$
\begin{align}
\forall x \exists y (P(x, f(x)) \lor \lnot P(x,y)) &\equiv \\
&\equiv \forall x(P(x, f(x)) \lor \exists y \lnot P(x, y)) \qquad \text{Def. von} \ \forall x\\
&\equiv 
\end{align}
$$



$$
\begin{align}
&\mathcal A_{x\rightarrow u}(P(x, f(x)) =1) \quad \text{ODER} \quad \mathcal A_{x\rightarrow u}(\exists  y \lnot P(x, y) =1 ) \\
&\mathcal A(P(u, f(u)) =1) \quad \text{ODER} \quad \mathcal A(\exists y \lnot P(u, y =1) \\

\text{2. Fall, i.e. erster Teil flasch}\quad &\mathcal A_{y\rightarrow v}(\lnot P(u, y)) = 1 \text{f ür ein } v^{\mathcal A}\\
& \mathcal A(\lnot P(u, v)) \quad \text{v=f(u)}


\end{align}
$$






   





















