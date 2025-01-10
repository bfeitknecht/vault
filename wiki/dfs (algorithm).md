
The **DFS** [[algorithm]] is a procedure to explore a graph $G = (V, E)$, going as far as possible before considering other paths. It is very easily implemented recursively, an iterative alternative requires a [[stack (ADT)]]. It's runtime is in $O(|V| + |E|)$, since every vertex is visited once and (in the worst case) every edge is traversed once.

```
function dfs(u)
	visit u
	for v adjacent to u
		if v is not visited
			dfs(v)
		end
	end
end
```

