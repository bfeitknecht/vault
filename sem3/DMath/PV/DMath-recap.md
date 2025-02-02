
# Topics

DMath
	proof patterns
	CRT
	modular exponent remainder rules
	relation properties
	function and relation quick facts (effect on properties by composition, intersection, union)
	proof of non-minimality of group axioms
	propositional logic vs predicate logic, [source](https://math.stackexchange.com/questions/3330870/implication-between-propositions-vs-implication-between-predicates)
	symbols of either as language

# Cheatsheet

- primes
- totient function
- relation properties definitions, preservation under operations
- resolution calculus
- logical calculus derivation
- every cyclic group is commutative (generator)
- for every proof system there exists a unique verification that makes it sound and complete

# Exams

- [ ] HS18
- [ ] FS19
- [ ] HS19
- [ ] FS20
- [ ] HS20
- [x] FS21 ✅ 2025-02-01
- [ ] HS21
- [x] FS22 ✅ 2025-02-01
- [x] HS22 ✅ 2025-01-30
- [ ] FS23
- [ ] HS23
- [ ] FS24


# Set

Disambiguation of some symbols.

| Symbol     | Usage       | Between    |
| ---------- | ----------- | ---------- |
| $\to$      | formulas    | terms      |
| $\implies$ | proofs      | statements |
| $=$        | equality    | anything   |
| $\equiv$   | equivalence | formulas   |

Write proofs in the correct implication direction! Start with something true and derive the statement to prove, not the other way around.

$|A\times B | = |A| \cdot |B|$
$|\mathcal{P}(A)| = 2^{|A|}$
$0 \leq |A \cap B| \leq \min(|A|, |B|)$


Prove $A \subseteq B$. Let $x \in A$ be arbitrary. Show $x \in B$.
Prove $A = B$. Double set inclusion.


# Relation

Let $\rho$ be a binary relation on $A \neq \varnothing$. Let $a, b, c \in A$ be arbitrary.

| Property     | Definition                                                       | Graph              | Preorder | Equivalence | Partial Order |
| ------------ | ---------------------------------------------------------------- | ------------------ | -------- | ----------- | ------------- |
| reflexivity  | $a \mathop \rho a$                                               | every vertex loops | yes      | yes         | yes           |
| ireflexivity | $a \mathop{\not\!\rho} a$                                        | no vertex loops    |          |             |               |
| symmetry     | $a \mathop\rho b \iff b \mathop\rho a \iff \rho =\widehat{\rho}$ | undirected graph   |          | yes         |               |
| antisymmetry | $a \mathop\rho b \land b \mathop\rho a \implies a = b$           | no 2-cycles        |          |             | yes           |
| transitive   | $a \mathop\rho b \land b \mathop\rho c \implies a \mathop\rho c$ | every walk is edge | yes      | yes         | yes           |

Prove reflexivity. Let $x$ be arbitrary. Show $(x, x) \in \rho$.
Prove symmetry. Let $x, y$ be arbitrary. Show $(x, y) \in \rho \implies (y,x) \in \rho$.
Prove transitivity. Let $x, y, z$ be arbitrary with $(x,y), (y,z) \in \rho$. Show $(x,z) \in \rho$.


Let $\rho, \sigma$ be relations on some non-empty set. The following table illustrates the preservation of their properties under set intersection, set union and relation composition.

| Property      | $\rho \cap \sigma$ | $\rho \cup \sigma$ | $\rho \circ \sigma$ |
| ------------- | ------------------ | ------------------ | ------------------- |
| reflexivity   | yes                | yes                | yes                 |
| symmetry      | yes                |                    |                     |
| antisymmetry  | yes                |                    |                     |
| transitivity  | yes                |                    | yes                 |
| equivalence   | yes                |                    |                     |
| partial order | yes                |                    |                     |


# Poset

Let $(A, \preceq)$ be a poset with $S \subseteq A$. Then $a \in A$ can exhibit the following properties.

| Property    | Definition                      | Meaning          |
| ----------- | ------------------------------- | ---------------- |
| minimal     | $\not\exists b : b \prec a$     | no lines down    |
| maximal     | $\not\exists b : a \prec b$     | no lines up      |
| least       | $\forall b : a \preceq b$       | bottom element   |
| greatest    | $\forall b : b \preceq a$       | top element      |
| lower bound | $\forall b \in S : a \preceq b$ | bottom of subset |
| upper bound | $\forall b \in S : b \preceq a$ | top of subset    |


# Function
```tikz
\usepackage{tikz-cd}

\begin{document}

\begin{tikzcd}
	& {} &&&& {} &&&& {} \\
	{} &&&&&&&&&& {} \\
	&& \bullet && \bullet && \bullet && \bullet \\
	&& \bullet && \bullet &&&& \bullet \\
	&& \bullet && \bullet && \bullet && \bullet \\
	{} &&&&&&&&&& {} \\
	&& \bullet && \bullet && \bullet && \bullet \\
	&& \bullet &&&& \bullet && \bullet \\
	&& \bullet && \bullet && \bullet && \bullet \\
	{} &&&&&&&&&& {} \\
	& {} &&&& {} &&&& {}
	\arrow[no head, from=1-2, to=11-2]
	\arrow[no head, from=1-6, to=11-6]
	\arrow[no head, from=2-11, to=2-1]
	\arrow[from=3-3, to=3-5]
	\arrow[from=3-7, to=3-9]
	\arrow[from=4-3, to=4-5]
	\arrow[from=5-3, to=5-5]
	\arrow[from=5-7, to=5-9]
	\arrow[no head, from=6-1, to=6-11]
	\arrow[from=7-3, to=7-5]
	\arrow[from=7-7, to=7-9]
	\arrow[from=8-3, to=7-5]
	\arrow[from=8-7, to=7-9]
	\arrow[from=9-3, to=9-5]
	\arrow[from=9-7, to=9-9]
	\arrow[no head, from=10-11, to=10-1]
	\arrow[no head, from=11-10, to=1-10]
\end{tikzcd}

\end{document}
```

Injection is into, no collisions occur in the codomain, $f(x_{1}) = f(x_{2}) \implies x_{1} = x_{2}$.
Surjection is onto, there are no holes in the codomain, $f_{*}[X] = Y$.


# Countability

**Example**
Prove that $\mathbb{N}^{m}$ is countable for $m \in \mathbb{N}$.

Define an injection $\varphi : \mathbb{N}^{m} \to \mathbb{N}$ with $\varphi(x) = \prod_{i \in [m]} p_{i}^{n_{i}}$ for $x = (n_{i})_{m} \in \mathbb{N}^{m}$. Correctness follows from the unique prime factorization theorem.


# Number Theory

## CRT
![[chinese remainder theorem (CRT)]]

## Diffie-Hellman


| Object         | Formula                                                  | Meaning                              |
| -------------- | -------------------------------------------------------- | ------------------------------------ |
| $p$            | $p \in \mathbb{P}$                                       | public prime                         |
| $g$            | $\gcd(p, g) = 1$                                         | public generator in $\mathbb{Z}_{p}$ |
| $x_{A}, x_{B}$ | $x_{A}, x_{B} \in \mathbb{Z}$                            | private exponents                    |
| $y_{A}, y_{B}$ | $y_{A} \equiv_{p} g^{x_{A}}, y_{B} \equiv_{p} g^{x_{A}}$ | public key                           |
| $k$            | $k \equiv_{p} y_{A}^{x_{B}} = g^{x_{A} x_{B}}$           |                                      |


## RSA

| Object                        | Formula                    | Meaning                                     |
| ----------------------------- | -------------------------- | ------------------------------------------- |
| modulos (public)              | $n = pq$                   | product of secret primes                    |
| encryption exponent (public)  | $\gcd(e, \varphi(n)) = 1$  | coprime to $\vert \mathbb{Z}_{m}^{*} \vert$ |
| decryption exponent (private) | $de \equiv_{\varphi(n)} 1$ | multiplicative inverse of $e$               |
| message                       | $m = R_{n}(c^{d})$         | decrypted ciphertext                        |
| ciphertext                    | $c = R_{n}(m^{e})$         | encrypted message                           |



# Abstract Algebra


| Object        | Neutral Element | Associative | Inverse | Commutative |
| ------------- | --------------- | ----------- | ------- | ----------- |
| monoid        | yes             | yes         | no      | no          |
| group         | yes             | yes         | yes     | no          |
| abelian group | yes             | yes         | yes     | yes         |

### Generators

For the additive group $\mathbb{Z}_{n}$, generators $g_{i}$ are all elements coprime to $n$, $\gcd(g_{i}, n) = 1$.

### Morphism

Let $G, H$ be groups under the operations $\star$ and $\diamond$, respectively. Then $\varphi : G \to H$ is a homomorphism if $\varphi(a \star b) = \varphi(a) \diamond \varphi(b)$.
An isomorphism is a bijective homomorphism and preserves generators.




# Proof System, Logical Calculus

In $\mathcal{A}_{[x \to u]}(F)$, the $x$ is a variable occurring (free) in $F$ and $u$ is an element of the universe, $u \in U^{\mathcal{A}}$. If a function is needed, i.e. the formula is of the form $\forall x \exists y F$, write the function in terms of the variables occurring in the formula $\mathcal{A}_{[x \to f^{\mathcal{A}}(u)]}(F)$!


Explicit cases for semantics of quantifiers in interpretation.
$$
\begin{align}

\mathcal{A} (\forall x F) = \begin{cases}
 1, & \text{if $\mathcal{A}_{[x \to u]}(F) = 1$ for all $u \in U^{\mathcal{A}}$} \\
 0, &\text{if $\mathcal{A}_{[x \to u]}(F) = 0$ for some $u \in U^{\mathcal{A}}$}
\end{cases}
\\ \\
\mathcal{A} (\exists x F) = \begin{cases}
 1, & \text{if $\mathcal{A}_{[x \to u]}(F) = 1$ for some $u \in U^{\mathcal{A}}$} \\
 0, &\text{if $\mathcal{A}_{[x \to u]}(F) = 0$ for all $u \in U^{\mathcal{A}}$}
\end{cases}

\end{align}
$$




