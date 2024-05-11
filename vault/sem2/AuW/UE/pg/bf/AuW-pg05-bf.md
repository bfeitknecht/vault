
![[AuW-pg05-e.pdf#page=1&rect=86,404,521,548|AuW-pg05-e, p.1]]


We recall the definition for a network is a tuple $N = (V, A, c, s, t)$, such that
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
s &= \text{"super source"} \\
t &= \text{"super sink"} \\
 \\
\mathbb{P} &= \{ p_{i} \ | \ i \in [1, n] \} \\
\mathbb{K} &= \{ k_{j} \ | \ j \in ]n, m] \} \\
\\
V &= \{ \mathcal{S}, \mathcal{T}, p \in \mathbb{P}, k \in \mathbb{K} \} \\
\\
X &= \{ s \times \mathbb{P} \} \\
Y &= \{ \mathbb{P} \times \mathbb{K} \} \\
Z &= \{ \mathbb{K} \times t \} \\
 \\
A &= X \cup Y \cup Z \\
 \\
c(a) &= \begin{cases}
g_{i}, &a \in X \\
1, &a \in Y \\
h_{j}, &a \in Z
\end{cases}
\end{align}
$$
Thus our network $N=(V, A, c, s, t)$.






```lua
-- @input
-- N = {V, A, c, s, t}
-- H = sum(h[1, ... m])
--
-- returns a boolean,
-- indicating whether the tour
-- is possible and, if yes,
-- what presents each kid gets
function deliveryPossible(N, H)
	possible = H == N.computeMaximumFlow(s, t)
	if possible then
		presents = {}
		
	end
	return possible and presents
end

function computeMaximumFlow(s, t)
	-- runs Ford Fulkerson on network N
	-- returns maximum flow from s to t
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

