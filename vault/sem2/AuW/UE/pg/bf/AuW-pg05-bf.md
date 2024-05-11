
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
Thus our network $N=(V, A, c, s, t)$. The following algorithm solves the problem.

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
	presents = getPresents(N)
	return possible and presents
end

function getPresents(N)
	presents = {}
	for j=1, m do
		presents[j] = {}
		for i=1, n do
			presents[j][i] = N.getFlow(j)
		end
	end
	return presents
end

function computeMaximumFlow(s, t)
	-- runs Ford Fulkerson on network N
	-- returns maximum flow from s to t
end

function getFlow(v)
	-- returns the flow at vertex v
end
```

The runtime is $O(nm+n+m+f)$, as the 