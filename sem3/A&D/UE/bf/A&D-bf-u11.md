
# 11.1		Multiplicative Weight Shortest Path
![[A&D-e-u11.pdf#page=1&rect=66,321,532,529|A&D-e-u11, p.1]]

Since $w_{e} \geq 1$ for all $e \in E$ the multiplication is monotonically increasing. Simply run dijkstra's algorithm with the modification of updating the associated weights to reach vertices with their logarithm. Additional edges sum up the logarithm, since $\log(a \cdot b) = \log(a) + \log(b)$ and edge weights are strictly greater than zero by definition.



<div class="page-break" style="page-break-before: always;"></div>

# 11.2		Rotating Weights
![[A&D-e-u11.pdf#page=1&rect=66,86,532,246|A&D-e-u11, p.1]]


algorithm that finds shortest rotating weight path $P = v_{0} \leadsto v_{1}$.

$c_{t}(\{ v_{i}, v_{j} \}) = c_{0}(\{ v_{i \oplus t}, v_{j \oplus t} \})$, where $\oplus$ denotes addition modulo $n$.




<div class="page-break" style="page-break-before: always;"></div>

# 11.4		Rail Racer
![[A&D-e-u11.pdf#page=3&rect=67,566,530,752|A&D-e-u11, p.3]]

## (b)
![[A&D-e-u11.pdf#page=3&rect=85,327,532,453|A&D-e-u11, p.3]]

1. undirected weighted graph, every checkpoint is another vertex and the edge weight is speed limit on that stretch.
2. shortest path without negative cycles
3. probably dijkstra or some other shortest path finding algorithm





