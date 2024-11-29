

# 10.1      Shortcutting closed Eulerian Walks ![[A&D-e-u10.pdf#page=1&rect=68,335,532,527|A&D-e-u10, p.1]]


We assume the connected graph $H = (V, F)$ on the same $n = |V|$ vertices as the complete graph $G = K_{n}$ has a closed eulerian walk $T = (f_{i})_{k}$.


weight of hamilton cycle in $G$ at most that of closed eulerian walk in $H$


for every edge in $f \in F$, check if the weight in $H$ of that edge is more than that in $G$. if so, remove it and take the edge between those vertices in $G$




# 10.2      BFS ![[A&D-e-u10.pdf#page=1&rect=68,239,529,286|A&D-e-u10, p.1]]
![[A&D-e-u10.pdf#page=2&rect=66,569,531,772|A&D-e-u10, p.2]]

## a) ![[A&D-e-u10.pdf#page=2&rect=86,498,530,555|A&D-e-u10, p.2]]

| iteration | operation      | queue           |
| --------- | -------------- | --------------- |
| `1`       | `q.push(A)`    | `q = [A]`       |
| `2`       | `q.pop() -> A` | `q = []`        |
| `3`       | `q.push(F)`    | `q = [F]`       |
| `4`       | `q.push(G)`    | `q = [F, G]`    |
| `5`       | `q.pop() -> F` | `q = [G]`       |
| `6`       | `q.pop() -> G` | `q = []`        |
| `7`       | `q.push(B)`    | `q = [B]`       |
| `8`       | `q.push(H)`    | `q = [B, H]`    |
| `9`       | `q.push(I)`    | `q = [B, H, I]` |
| `10`      | `q.pop() -> B` | `q = [H, I]`    |
| `11`      | `q.pop() -> H` | `q = [I]`       |
| `13`      | `q.push(E)`    | `q = [I, E]`    |
| `14`      | `q.pop() -> I` | `q = [E]`       |
| `15`      | `q.push(C)`    | `q = [E, C]`    |
| `16`      | `q.pop() -> E` | `q = [C]`       |
| `17`      | `q.push(D)`    | `q = [C, E]`    |
| `18`      | `q.pop() -> C` | `q = [E]`       |
| `19`      | `q.pop() -> E` | `q = []`        |



## b) ![[A&D-e-u10.pdf#page=2&rect=87,478,530,494|A&D-e-u10, p.2]]


## c) ![[A&D-e-u10.pdf#page=2&rect=86,458,531,474|A&D-e-u10, p.2]]


## d) ![[A&D-e-u10.pdf#page=2&rect=86,424,530,454|A&D-e-u10, p.2]]


## e) ![[A&D-e-u10.pdf#page=2&rect=85,377,530,420|A&D-e-u10, p.2]]


## f) ![[A&D-e-u10.pdf#page=2&rect=87,344,528,373|A&D-e-u10, p.2]]


## g) ![[A&D-e-u10.pdf#page=2&rect=87,321,528,338|A&D-e-u10, p.2]]




# 10.4      Number of Minimal Paths ![[A&D-e-u10.pdf#page=3&rect=67,652,533,752|A&D-e-u10, p.3]]



