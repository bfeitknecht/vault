
The **dijkstra** algorithm is a [[path (graph)|path]] finding algorithm for a graph $G = (V, E)$ that computes the shortest path between some vertex $s$ and all other vertices $v \in V \setminus \{ s \}$. Its runtime depends on the data structure used to manage the vertices, with fibonacci heap or priority queue it's in $O((|V| + |E|) \log |V|)$. Because dijkstra is greedy, if edge weights are not positive, i.e. not $w : E \to \mathbb{R}_{+}$ then the algorithm fails.

```
function dijkstra(G, s)
    let pq = priority queue
    let d = []
    d[s] = 0
    
    for v in V \ {s}
        pq.insert_priority(v, INFINITY)
    end
    
    while pq is not empty do
        let u = pq.extract_minimum()
        for v adjacent to u
            let dsuv = d[u] + c(u, v)
            
            if dsuv < d[v] then
                d[v] = dsuv
                pq.decrease_priority(v, dsuv)
            end
        end
    end
    
    return d
end
```
