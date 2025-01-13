
The **BFS** algorithm explores vertices in a graph $G = (V, E)$ in levels. It runs in $O(|V| + |E|)$.

```
function bfs(u)
	let q = empty queue
	q.enq(u)
	while q is not empty
		let v = q.deq()
		for w adjacent to v
			if w is not visited then
				visit w
				q.enq(w)
			end
		end
	end
end
```
