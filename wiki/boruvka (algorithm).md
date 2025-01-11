
Another algorithm to construct an [[MST (minimum spanning tree)]] for a graph $G = (V, E)$ is that of **boruvka**. It runs in $O((|V| + |E|) \log |V|)$.

```
function boruvka(G)
	let F = {}
	
	while F is not MST
		let (S_i for i in 1 .. k) = k connected components of G = (V, E \ F)
		let (e_i for i in 1 .. k) = minimum weight edges adjacent to S_i
		F += (e_i)
	end
	
	return F
end
```