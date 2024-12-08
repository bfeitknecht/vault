
# 11.1		Multiplicative Weight Shortest Path
![[A&D-e-u11.pdf#page=1&rect=66,321,532,529|A&D-e-u11, p.1]]


Since all edge weights are positive, $\forall e \in E :w_{e} \geq 1$, the application of dijkstra's algorithm as a subroutine is feasible. To guarantee the correctness of the algorithm the multiplicative weight shortest path problem is transformed to an additive variant.

Specifically the algorithm functions as follows.
1. Compute logarithm of all edge weights, specifically $\forall e \in E : w_{e}' = \ln(w_{e})$
2. Run dijkstra's algorithm on the graph $G$ with the modified weights, returns array $\mathrm{dist}$ of shortest paths to $v \in V$
3. Return $\exp(\mathrm{dist}[t])$

The correctness of the approach described above is given by the following. Let $P$ be an $s \leadsto t$ path in $G$.
$$
\begin{align}
\ln \left( \prod_{e \in P} w_{e} \right) &= \overbracket{ \sum_{e \in P} \underbracket{ \ln(w_{e}) }_{w_{e}' } }^{ \mathrm{dist}[t] } &\text{(monotonicity, logarithmic property)} \\
\prod_{e \in P} w_{e} &= \exp(\mathrm{dist}[t]) 
\end{align}
$$

Since the runtime of dijkstra's algorithm is $O((n + m) \log n)$, which dominates the logarithm and exponentiation operations, the desired runtime bounds is achieved.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 11.2		Rotating Weights
![[A&D-e-u11.pdf#page=1&rect=66,86,532,246|A&D-e-u11, p.1]]

Since the edge weights can be negative but it is not possible to construct a negative cycle, bellman-ford's algorithm is applicable to find the shortest rotating weights path $P = v_{0} \leadsto v_{1}$.

Construct a modified graph $G' = (V', E')$ as follows, where a layer corresponds to a unique time step equivalence class. Let $\oplus$ denote addition modulo $n$.
1. $V' = V \times [n]$, vertices in different layers of the form $(v, t)$, where $v \in V$ and $t \in [n]$
2. $E' = V \times V \times [n]$, edges between vertices in neighboring layers, $(v_{i}, v_{j}, t)$ where $v_{i}, v_{j} \in V$ and $t \in [n]$, i.e. $(v_{i}', v_{j}') \in E'$ with $v_{i}' = (v_{i}, t)$ and $v_{j}' = (v_{j}, t \oplus 1)$

Proof of correctness. To show is that the following holds.
$$
\text{Algorithm returns $P$} \iff \text{$P$ is shortest rotating weight path in $G$}
$$

Assume that our algorithm returns $P$. Then, by the correctness of the bellman ford algorithm, it holds that $P$ is the shortest $v_{0} \leadsto v_{1}$ path in $G$. Then assume some $P$ is the shortest such path in $G$. As there are no negative cycles, the bellman-ford algorithm terminates and our algorithm returns $P$. Hence the correctness of our algorithm is proven.

The runtime is given by bellman ford, which runs in $O(nm)$. Substituting for the number of vertices and edges in the modified Graph $G' = (V', E')$ then results in the desired runtime. As there are originally $|V| = n$ vertices and we construct $n$ variants corresponding to the rotation equivalence classes for each, $|V'| = n^{2}$. As there are $|V \times V | = n^{2}$ vertex pairs in the original graph and we construct $n$ edges corresponding to the rotation time equivalence classes, the number of edges is $|E'| = n^{3}$. Thus the described algorithm is bounded by $O(n^{5})$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 11.4		Rail Racer
![[A&D-e-u11.pdf#page=3&rect=67,566,530,752|A&D-e-u11, p.3]]

## (b)
![[A&D-e-u11.pdf#page=3&rect=85,327,532,453|A&D-e-u11, p.3]]

1. Model the problem as an undirected weighted graph $G = (V, E)$, where every station and checkpoint is a vertex and the connections between stations (and checkpoints) are edges with weight equal to the time it takes to traverse that connection while respecting the speed limit, formally for $e = \{ u_{0}, u_{1} \}$ the weight is given by $w_{e} = c/(v_{0} + v_{1})$, where $v_{0}, v_{1}$ denotes the speed limits at $u_{0}, u_{1}$ for some positive integer $c$
2. Solve the problem by finding the shortest path in the graph between vertices Zurich and Zermatt
3. Apply dijkstra's algorithm with no modifications since there are no negative cycles as all edge weights are positive with $s = \mathrm{Zurich}$ and $t = \mathrm{Zermatt}$, return $\mathrm{dist[t]}$

The runtime of the algorithm is $O((n + m) \log n)$, given by dijkstra's algorithm, where $n = |V|$ and $m = |E|$ with the vertex set and edge set as described above. The correctness is given by the fact that the edge weights denote the travel time for that 10km stretch and dijkstra's algorithm returns the shortest path which in this case corresponds to the shortest travel time path from Zurich to Zermatt.
$\square$
