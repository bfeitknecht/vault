
Similar to [[prim (algorithm)]], **kruskal's algorithm** determines the [[MST (minimum spanning tree)]] of a graph $G = (V, E)$. It's greedy since it sorts the edges based on weight and then repeatedly adds the cheapest one that doesn't create a cycle. To achieve the runtime of $O(|E| \log |V|)$ the use of a disjoint set data structure such as union-find is required.

```
function kruskal(G)
    let F = {}
    let E' = sort(E)
    
    for e = (u, v) in E'
        if not same(u, v) then
            F += e
            union(u, v)
        end
    end
    
    return F
end
```