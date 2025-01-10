

```
# input:	starting vertex
# output:	distances from s for all v in V
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

