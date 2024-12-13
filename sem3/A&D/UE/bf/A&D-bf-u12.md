

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


# 12.3		Exploring MST Connectivity ![[A&D-e-u12.pdf#page=2&rect=67,509,531,554|A&D-e-u12, p.2]]


## (a) ![[A&D-e-u12.pdf#page=2&rect=85,473,532,506|A&D-e-u12, p.2]]

Let $e_{1} \in T_{1} - T_{2}$ be an edge in the respective set difference of the two MST. Then we prove that there exists an edge $e_{2} \in T_{2} - T_{1}$ such that $T_{1}' = F_{1} \cup \{ e_{2} \}$ and $T_{2}' = F_{2} \cup \{  e_{1} \}$ are MST, where $F_{1} = T_{1} - \{ e_{1} \}$ and $F_{2} = T_{2} - \{ e_{2} \}$ are the two forests resulting from removing the aforementioned edges from the two MST, making them disconnected.

Then, $F_{1} = X_{1} \cup Y_{1}$, where $X_{1}, Y_{1}$ are the two connected components of $F_{1}$. Let $e_{2} = \{ x_{2}, y_{2} \}$, where $x_{2} \in X_{2}$ and $y_{2} \in Y_{2}$ are the edge's vertices in the respective connected components. 


Assume $T_{1}' = F_{1} \cup e_{2}$ has only two connected components, $T_{1}' = X_{1}' \cup Y_{1}'$. Without loss of generality, let $e_{2} \in X_{1}'$. 

Since $e_{2} \not\in T_{1}$, this implies that 


Contradiction. Thus $T_{1}'$ is connected and since its components span $G$, it's a spanning tree.




![[A&D-e-u12.pdf#page=2&rect=66,427,533,471|A&D-e-u12, p.2]]
## (b) ![[A&D-e-u12.pdf#page=2&rect=87,408,534,425|A&D-e-u12, p.2]]

Hint: repeatedly apply (a)


## (c) ![[A&D-e-u12.pdf#page=2&rect=85,354,531,384|A&D-e-u12, p.2]]

Hint: Follow the proof for (b) analyze the weights of the new spanning trees produced by (a).




# 12.5		Heavy and Light Edges ![[A&D-e-u12.pdf#page=3&rect=66,317,529,395|A&D-e-u12, p.3]]

## (a) ![[A&D-e-u12.pdf#page=3&rect=86,296,528,313|A&D-e-u12, p.3]]

Assume for contradiction that $T \subseteq E$ is an MST which contains a heavy edge $e$. Then there exists a cycle $C \subseteq E$ such that $\forall e' \in C - \{ e \} : w_{e} > w_{e'}$. 


![[A&D-e-u12.pdf#page=3&rect=84,248,528,293|A&D-e-u12, p.3]]



