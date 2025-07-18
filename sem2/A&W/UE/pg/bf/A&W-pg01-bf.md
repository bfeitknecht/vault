## 1.

#### a)
We use Prim's algorithm to find the MST of $G$. Starting it on the node $A$ results in the nodes being visited in the following order, with the associated weights.

1. $D, w = 2$
2. $B, w= 3$
3. $C, w = 4$
4. $G, w = 3$
5. $F, w = 5$
6. $E, w = 4$

Thus $T$ contains the following edges:

$E_{T} = \{ \{A, D\}, \{A, B\}, \{B, C\}, \{C, G\}, \{G, F\}, \{F, E\} \}$

---

#### b)
We construct $Z$ as follows:

$E_Z = \{ \{A, D\}, \{D, E\}, \{E, F\}, \{F, G\}, \{G, C\}, \{C, B\}, \{B, A\} \}, \ C_Z = 21$.

In particular, we add one edge, $e_Z = \{D, E\}, w(e_Z) = 5$. Since the rest of the edges are the ones already in the MST $T$, and $w(e_Z) < C_Z$, thus follows:

$C_Z + w(e_Z) < 2C_Z$

---

#### c)
The MST $T$ is, per definition, the walk of minimum length to visit every node. In order for any closed walk $Z$ on $G$ that visits all nodes to be closed, we must add an edge $e_Z$ to $T$ to "close" the walk. Since $w(e_Z) \geq \min(w(e_T) \ \forall e_T \in E_T$,  $\sum_{e \in E_Z} w(e) \geq C_T$. Informally, there does not exist an edge not already in the MST that we can add to it without the resulting weight not being at least the same weight. In particular, the only case where $C_Z = C_T$ is when all edges have weight zero.
$\square$
