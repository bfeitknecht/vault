
![[AuW-pg05-e.pdf#page=1&rect=86,404,521,548|AuW-pg05-e, p.1]]


We recall the definition for a network is a tuple $N = (V, A, s, t, c)$, such that
$$
\begin{align}
& G = (V, A) &\text{"directed graph"} \\
& s \in V &\text{"source"} \\
& t \in V\setminus\{s\} &\text{"target"} \\
& c : A \rightarrow \mathbb R_{0}^+ &\text{"capacity function"} \\
\end{align}
$$
Let us define these elements
$$
\begin{align}
G &= K_{m, n} &\text{"complete bipartite directed graph"}\\
&= (V_{1}, V_{2}) \text{s.t.} \\
V &= \{ v \ | \ 0<i \leq n+m \} \\
A &= \{ () \in \}
\end{align}
$$





```lua
g = {g1, gi, ... gn} 
h = {h1, hj, ... hm}
function deliveryPossible(n, g, m, m)
	H = 0
	for i in 1 ... n
	
end
```


```java
public boolean possible() {
	int n = In.readInt(); // number of children
	int m = In.readInt(); // number of different toys
	int S = 0;            // supersource
	int T = n+m+1;        // supersink
	int D = 0;            // total deserved toys
      
	Graph G = new Graph(n+m+2);
	for (int i = 1; i <= n+m; i++) {
		if (i <= n) {             	// iterate over kids
			int d = In.readInt();   // how many toys i-th kid deserves
			G.addEdge(i, T, d);     // connect kid to sink w/ capacity d
			D += d;                 // sum to total deserved toys
		}
		else {                    	// iterate over toy types
			int c = In.readInt();   // how many copies of i-th toy
			G.addEdge(S, i, c);     // connect source to toy type w/ capacity c
			for (int j = 1; j <= n; j++)	// iterate over kids
				G.addEdge(i, j, 1);         // connect toy to kid w/ capacity c
		}
	}
	return D == G.computeMaximumFlow(S, T);
}
```

