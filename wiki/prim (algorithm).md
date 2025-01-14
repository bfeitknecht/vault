
To construct an [[MST (minimum spanning tree)]] $T$ of a graph $G = (V, E)$ **prim's** algorithm can be used. It's a greedy algorithm that picks an arbitrary starting vertex and builds the MST by repeatedly adding the cheapest edge to an unreached vertex from vertices already reachable with $T$. It's runtime when using a [[min-max heap]] is the same as that of [[dijkstra (algorithm)]] specifically $O((|V| + |E|) \log |V|)$.

```
function prim(G)
	let s = arbitrary starting vertex
	let S = {s}		# connected component of s
	let F = {}
	
	while S is not V do
		# find minimum weight edge adjacent to connected component
		e = (u, v) where u in S and v not in S
		F += e
		S += v
	end
	
	return F
 end
```