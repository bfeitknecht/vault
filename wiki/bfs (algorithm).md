
The **BFS** algorithm explores vertices in a graph $G = (V, E)$ in levels. It runs in $O(|V| + |E|)$.

```
function bfs(u)
	let Q = empty queue
	Q.enq(u)
	while Q is not empty
		let v = Q.deq()
		for w adjacent to v
			if w is not visited then
				visit w
				Q.enq(w)
			end
		end
	end
end
```
