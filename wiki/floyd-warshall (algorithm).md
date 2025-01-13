
The **floyd-warshall** algorithm determines the shortest path between any two vertices in a graph $G = (V, E)$. It does this using [[dynamic programming]] in $O(|V|^{3})$. If the graph contains a negative cycle, the algorithm can detect it, as `d[v][v] < 0` implies exactly that.

```
function floyd_warshall(G)
	let n = |V|
	let d = [][]
	for e = (u, v) in E
		d[u][v] = c(u, v)
	end
	
	for i in 1 .. n
		for j in 1 .. n
			for k in 1 .. n
				d[i][j] = min(d[i][j], d[i][k] + d[k][j])
			end
		end
	end
	
	return d
end
```