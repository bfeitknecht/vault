
The **dijkstra** algorithm is a [[path (graph)|path]] finding algorithm for a graph $G = (V, E)$

```
function dijkstra(s)
	let d = []
	d[s] = 0
	
	for v in V - {s}
		d[v] = INFINITY
	end
	
	let H = heap or priority queue from V
	
	while H is not empty
		let u = H.extract_min()
		for v adjacent to u
			H.decrease_key(v, d[v])
		end
	end
	
end
```
