
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

Let $\rho$ be a binary relation on $A$. Let $a, b, c \in A$ be arbitrary.

| Property     | Definition                                                       | Graph                  | Partial Order | Equivalence |
| ------------ | ---------------------------------------------------------------- | ---------------------- | ------------- | ----------- |
| reflexivity  | $a \mathop \rho a$                                               | every vertex has loop  | yes           | yes         |
| ireflexivity | $a \mathop{\not\!\rho} a$                                        | no vertex has loop     |               |             |
| symmetry     | $a \mathop\rho b \iff b \mathop\rho a$                           | undirected graph       |               | yes         |
| antisymmetry | $a \mathop\rho b \land b \mathop\rho a \implies a = b$           | no cycle of length two | yes           |             |
| transitive   | $a \mathop\rho b \land b \mathop\rho c \implies a \mathop\rho c$ | metric property holds  | yes           | yes         |

Prove reflexivity. Let $x$ be arbitrary. Show $(x, x) \in \rho$.
Prove symmetry. Let $x, y$ be arbitrary. Show $(x, y) \in \rho \implies (y,x) \in \rho$.
Prove transitivity. Let $x, y, z$ be arbitrary with $(x,y), (y,z) \in \rho$. Show $(x,z) \in \rho$.


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

Injection is one-to-one, no collisions occur in the codomain.
Surjection is onto, there are no holes in the codomain.


# Countability
