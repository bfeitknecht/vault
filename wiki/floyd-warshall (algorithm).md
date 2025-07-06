
The **floyd-warshall** algorithm determines the shortest path between any two vertices in a graph $G = (V, E)$. It does this using [[dynamic programming]] in $O(|V|^{3})$. If there exists a vertex $v \in V$ such that `d[v][v] < 0` then the graph contains a negative cycle, however the converse is not necessarily true. The edge costs are allowed to be negative $c : E \to \mathbb{R}$.

```
function floyd_warshall(G)
    let n = |V|
    let d = [][]
    
    for u in 1 .. n
        for v in 1 .. n
            let e = (u, v)
            d[u][v] = u == v ? 0 :
            E contains e ? c(u, v) :
            INFINITY
        end
    end
    
    for u in 1 .. n
        for v in 1 .. n
            for k in 1 .. n
                d[u][v] = min(d[u][v], d[u][k] + d[k][v])
            end
        end
    end
    
    return d
end
```