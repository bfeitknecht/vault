
The **bellman-ford** algorithm finds the shortest path from some vertex $s$ to all other vertices $v \in V \setminus \{ s \}$. It's time complexity is $O(|V| \cdot |E|)$. The edge weights can be negative $w : E \to \mathbb{R}$ and negative cycles can be detected, as some path $P \in V^{*} : |P| \geq |V|$ must contain a cycle.

```
function bellman_ford(G, s)
	let n = |V|
	let d = []
	for i in 1 .. n
		d[i] = INFINITY
	end
	d[s] = 0
	
	for i in 1 .. n-1
		for e = (u, v) in E
			d[v] = min(d[v], d[u] + w(u, v))
		end
	end
	
	return d
end
```

