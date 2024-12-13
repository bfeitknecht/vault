

# 12.1		MST Practice ![[A&D-e-u12.pdf#page=1&rect=69,316,531,527|A&D-e-u12, p.1]]

## (a) ![[A&D-e-u12.pdf#page=1&rect=83,279,531,308|A&D-e-u12, p.1]]

| `iteration` | `1`      | `2`      | `3`      | `4`      | `5`      | `6`      | `7`      | `8`      |
| ----------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| `MST = {}`  | `{B, F}` | `{B, C}` | `{D, E}` | `{A, D}` | `{F, G}` | `{F, I}` | `{B, E}` | `{H, I}` |

## (b) ![[A&D-e-u12.pdf#page=1&rect=85,257,532,276|A&D-e-u12, p.1]]

| `iteration` | `1`      | `2`      | `3`      | `4`      | `5`      | `6`      | `7`      | `8`      |
| ----------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| `MST = {}`  | `{B, F}` | `{B, C}` | `{D, E}` | `{A, D}` | `{F, G}` | `{F, I}` | `{B, E}` | `{H, I}` |

## (c) ![[A&D-e-u12.pdf#page=1&rect=86,236,532,253|A&D-e-u12, p.1]]

| `iteration` | `1`      | `2`      | `3`      | `4`      | `5`      | `6`      | `7`      | `8`      |
| ----------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| `MST = {}`  | `{F, G}` | `{B, F}` | `{B, C}` | `{F, I}` | `{B, E}` | `{D, E}` | `{A, D}` | `{H, I}` |

<div class="page-break" style="page-break-before: always;"></div>

# 12.3		Exploring MST Connectivity ![[A&D-e-u12.pdf#page=2&rect=67,509,531,554|A&D-e-u12, p.2]]

## (a) ![[A&D-e-u12.pdf#page=2&rect=85,473,532,506|A&D-e-u12, p.2]]

Let $e_{1} \in T_{1} - T_{2}$ be an edge in the respective set difference of the two spanning trees. Then, $F_{1} = T_{1} - \{ e_{1} \}$ is the forest resulting from removing the edge $e_{1}$, where $F_{1}  = X_{1} \cup Y_{1}$ are its two connected components.

As $T_{2}$ is a spanning tree, there must exist an edge $e_{2} = \{ x_{2}, y_{2} \} \in T_{2}$ between the two connected components $X_{1}, Y_{1}$. Together, these cover all edges in $T_{1}$, therefore the edge cannot belong to $T_{1}$, i.e. $e_{2} \in T_{2} - T_{1}$. Thus $T_{1}' = F_{1} \cup \{ e_{2} \}$ is connected and hence a spanning tree.

Now consider $F_{2} = T_{2} - \{ e_{2} \}$. As $T_{1}$ is spanning tree and all edges in $F_{2}$ belong to $T_{2}$, the edge $e_{1}$ restores connectivity of the two components $F_{2} = X_{2} \cup Y_{2}$ and thus $T_{2}' = F_{2} \cup \{ e_{1} \}$ is a spanning tree.
$\square$

## (b) ![[A&D-e-u12.pdf#page=2&rect=66,427,533,471|A&D-e-u12, p.2]] ![[A&D-e-u12.pdf#page=2&rect=87,408,534,425|A&D-e-u12, p.2]]

Assume that $H$ is disconnected and consists of $k$ connected components, i.e. $H = \bigoplus_{i \in [k]} H_{i}$. Then, let $T_{1} \in \mathcal{E}_{H_{1}}$ and $T_{2} \in \mathcal{E}_{H_{2}}$ be two vertices of arbitrary distinct connected components $H_{1}, H_{2}$. By definition of $H$, $T_{1}, T_{2}$ are spanning trees. As $G$ is connected and thus the spanning trees $T_{1}, T_{2}$ are also connected, we can construct spanning trees $T_{1}', T_{2}'$ by the symmetric basis exchange property. These differ from $T_{1}, T_{2}$ by exactly two edges respectively. Continued application of the exchange property leads to spanning trees $T_{1}^{*} = T_{2}^{*}$. As these are identical, there exists a sequence of transformations by symmetric basis exchange such that $T_{1} \leftrightsquigarrow T_{2}$ are connected through spanning trees differing by exactly two edges. Contradiction. As the two vertices were chosen arbitrarily, it follows that $H$ is connected.
$\square$

## (c) ![[A&D-e-u12.pdf#page=2&rect=85,354,531,384|A&D-e-u12, p.2]]

Assume that $H_{\mathrm{MST}} \subseteq H$ is disconnected and consists of $k$ connected components $H = \bigoplus_{i \in [k]} H_{i}$. Then, let $T_{1} \in \mathcal{E}_{H_{1}}$ and $T_{2} \in \mathcal{E}_{H_{2}}$ be two vertices of arbitrary distinct connected components $H_{1}, H_{2}$. By definition of $H_{\mathrm{MST}}$, $T_{1}, T_{2}$ are MST, i.e. $w'(T_{1}) = w'(T_{2})$, where $w' : E^{*} \to \mathbb{R}_{\geq 0}$. Then there exists a sequence of transformations by symmetric basis exchange such that $T_{1} \leftrightsquigarrow T_{2}$, as edges of equal weight $w(e_{1}) = w(e_{1}')$ can continually be swapped until $T_{1}^{*} = T_{2}^{*}$. Contradiction. Since the vertices $T_{1}, T_{2}$ were chosen arbitrarily, the initial assumption that $H_{\mathrm{MST}}$ is disconnected must be false and hence $H_{\mathrm{MST}}$ is connected.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 12.5		Heavy and Light Edges ![[A&D-e-u12.pdf#page=3&rect=66,317,529,395|A&D-e-u12, p.3]]

## (a) ![[A&D-e-u12.pdf#page=3&rect=86,296,528,313|A&D-e-u12, p.3]]

Assume for contradiction that $T \subseteq E$ is an MST which contains a heavy edge $e$. Then there exists a cycle $C \subseteq E$ such that $\forall e' \in C - \{ e \} : w_{e} > w_{e'}$. Now construct $G' = T \cup \{ e' \}$, with $e' \in C$. As $T$ is MST, this introduces a cycle $C' \subseteq G'$. Finally, removing the heavy edge $e$ leads to a spanning tree $T' = G' - \{ e \}$. As $e$ is a heavy edge, the new spanning tree's weight is strictly less than that of the assumed MST with $w'(T') < w'(T)$. Contradiction. Hence, the initial assumption must be false and it's proven that a heavy edge cannot be light.
$\square$
