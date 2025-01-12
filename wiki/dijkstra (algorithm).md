
The **dijkstra** algorithm is a [[path (graph)|path]] finding algorithm for a graph $G = (V, E)$ that computes the shortest path between some vertex $s$ and all other vertices $v \in V \setminus \{ s \}$. Its runtime depends on the data structure used to manage the vertices, with fibonacci heap or priority queue it's in $O((|V| + |E|) \log |V|)$. Because dijkstra is greedy, if edge weights are not positive, i.e. not $w : E \to \mathbb{R}_{+}$ then the algorithm fails.

```
function dijkstra(G, s)
	let d = []
	d[s] = 0
	
	for v in V \ {s}
		d[v] = INFINITY
	end
	
	let H = min-max heap from V
	while H is not empty
		let u = H.extract_minimum()
		for v adjacent to u
			H.push_down(v, d[v])
		end
	end
	
	return d
end
```
