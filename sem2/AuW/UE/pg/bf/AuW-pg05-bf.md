
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
\mathbb{P} &= \{ p_{i} \ | \ i \in [1, n] \} \\
\mathbb{K} &= \{ k_{j} \ | \ j \in ]n, m] \} \\
\\
V &= \{ s, t, p \in \mathbb{P}, k \in \mathbb{K} \} \\
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

Thus our network $N=(V, A, c, s, t)$ solves the problem, since, either a distribution of presents can be achieved, in which case the maximum flow at $t$ must be equal to the sum of all $h_j$ and the types of presents for each household are those, that flow into it (the capacity of 1 ensures that no present can be given to a house twice), or it's impossible to distribute the presents, in which case the maximum flow at $t$ is not equal to the sum of all $h_j$.

<div class="page-break" style="page-break-before: always;"></div>

The following algorithm solves the problem, given a described network $N$ and returns a distribution of presents for it or, if not possible `false`.

```lua
-- @input
-- N = {V, A, c, s, t}
-- H = sum(h[1, ... m])
-- returns true and a distribution
-- if possible or false if not
function deliveryPossible(N, H)
	possible = H == N.maximumFlow(s, t)
	return possible and N.presents()
end

function presents()
	presents = {}
	for j=1, m do
		presents[j] = {}
		for i=1, n do
			presents[j][i] = N.flow(j)
		end
	end
	return presents
end

function maximumFlow(s, t)
	-- runs Ford Fulkerson on network N
	-- returns maximum flow from s to t
end

function flow(v)
	-- returns the flow at vertex v
end
```

The runtime is $O(|E|\cdot f)$, as the Ford-Fulkerson algorithm which dominates the rest runs in that time.
$\square$
