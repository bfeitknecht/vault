
# Sets

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


# Relations

Let $\rho$ be a binary relation on $A$. Let $a, b, c \in A$ be arbitrary.

| Property     | Definition                                                  | Graph                  |
| ------------ | ----------------------------------------------------------- | ---------------------- |
| reflexivity  | $a \mathop \rho a$                                          | every vertex has loop  |
| ireflexivity | $a \mathop{\not\!\rho} a$                                   | no vertex has loop     |
| symmetry     | $a \mathop\rho b \iff b \mathop\rho a$                      | undirected graph       |
| antisymmetry | $a \mathop\rho b, b \mathop\rho a \implies a = b$           | no cycle of length two |
| transitive   | $a \mathop\rho b, b \mathop\rho c \implies a \mathop\rho c$ | metric property holds  |

Prove reflexivity. Let $x$ be arbitrary. Show $(x, x) \in \rho$.
Prove symmetry. Let $x, y$ be arbitrary. Show $(x, y) \in \rho \implies (y,x) \in \rho$.
Prove transitivity. Let $x, y, z$ be arbitrary with $(x,y), (y,z) \in \rho$. Show $(x,z) \in \rho$.


