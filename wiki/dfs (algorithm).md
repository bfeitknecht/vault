
The **DFS** [[algorithm]] is a procedure to explore a graph $G = (V, E)$, going as far as possible before considering other paths. It is very easily implemented recursively, an iterative alternative requires a [[stack (data structure)]]. It's runtime is in $O(|V| + |E|)$, since every vertex is visited once and (in the worst case) every edge is traversed once. In a directed graph, a topological sorting can be achieved by reversing the `post` order of nodes visited by `dfs`. A graph having a topological sort is equivalent to it being a [[directed acyclic graph (DAG)]].

```
let k = 0
let pre = []
let post = []

function dfs(u)
	pre[u] = ++k		# visit u: pre order
	u.visited = true
	for v adjacent to u
		if v is not visited then
			dfs(v)
		end
	end
	post[u] = ++k		# leave u: post order
end
```
