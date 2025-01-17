
The **floyd-warshall** algorithm determines the shortest path between any two vertices in a graph $G = (V, E)$. It does this using [[dynamic programming]] in $O(|V|^{3})$. If the graph contains a negative cycle, the algorithm can detect it, as `d[v][v] < 0` implies exactly that.

```
function floyd_warshall(G)
	let n = |V|
	let d = [][]
	
	for u in 1 .. n
		for v in 1 .. n
			let e = (u, v)
			d[u][v] = u == v ? 0 :
			E contains e ? w(e) :
			INFINITY
		end
	end
	
	for u in 1 .. n
		for v in 1 .. n
			for k in 1 .. n
				d[u][v] = min(d[u][v], d[u][k] + d[k][v])
			end
		end
	end
	
	return d
end
```