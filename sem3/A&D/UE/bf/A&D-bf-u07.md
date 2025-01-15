
Basil Feitknecht, 23-922-099



# 7.1       Subset Sum with Duplicates ![[A&D-e-u07.pdf#page=1&rect=64,388,533,527|A&D-e-u07, p.1]]

```
function subsetsum_duplicates(A, b)
	let n = |A|
	let S = [][]		# memoization: b * n
	
	# base case: O(b + n)
	for i in 1 .. b S[i][0] = false end
	for j in 1 .. n S[0][j] = true end
	
	# recurrence relation: O(b * n)
	for i in 1 .. b
		for j in 1 .. n
			# compute subproblem: O(1)
			let a = A[j]
			S[i][j] = S[i][j-i] or (S[i][j-a] and a <= j) or (S[i][j-2*a] and 2*a <= j)
		end
	end
	
	# extract solution: O(1)
	return S[b][n]
end
```


1. dimensions of the boolean DP table $S$ are $(b+1) \times (n+1)$, i.e. matrix
2. entry $S[i][j]$, with $i \in [b], j \in [n]$ encodes that $i$ is *subset sum with duplicates* of first $j$ entries in $A$
3. the correctness of the recurrence relation is given by the fact, that adding an element solves a new subproblem, whereas not adding it preserves the results of the previous iterations' subproblems, i.e. the solutions of the subproblems together form the solution of the initial problem
4. we iterate $i$ over $1 \dots b$ and $j$ over $1 \dots n$, thus we compute bottom up
5. solution can be extracted at $S[b][n]$, since that entry encodes if it's possible to make *subset sum with duplicates* $b$ of all $n$ entries $A[1 ..n]$
6. running time is dominated by two nested for loops and thus $O(b \cdot n)$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 7.4       Weight and Volume Knapsack ![[A&D-e-u07.pdf#page=3&rect=67,461,528,567|A&D-e-u07, p.3]]

```
function weight_volume_knapsack(P, W, Wmax, Vmax)
	let n = |P|
	let K = [][][]		# memoization: n * Wmax * Vmax
	
	# base case: O(Wmax * Vmax)
	for w in 0 .. Wmax
		for v in 0 .. Vmax
			K[0][w][v] = 0
		end
	end
	
	# recurrence relation: O(n * Wmax * Vmax)
	for i in 1 .. n
		for w in 1 .. Wmax
			for v in 1 .. Vmax
				# compute subproblem: O(1)
				# maximum profit of first i items with weight <= w and volume <= v
				if W[i] <= w then
					K[i][w][v] = max{K[i-1][w][v], K[i][w-W[i]][v-1] + P[i]}
				else
					# too heavy to carry
					K[i][w][v] = K[i-1][w][v]
				end
			end
		end
	end
	
	# extract solution: O(1)
	return K[n][Wmax][Vmax]
end
```

1. dimensions of the 3d DP table are $(n+1) \times W_{\max} \times V_{\max}$ 
2. the meaning of entry $K[i][w][v]$ is the profit with items in $P[1..i]$ that add up to weight $w$ and volume $v$ 
3. the correctness of recursion is given by the fact that solutions to the subproblems solve the initial problem
4. calculation order is increasing $i$ then $w$ then $v$
5. extracting solution can be done in $O(1)$ at $K[n][W_{\max}][V_{\max}]$
6. runtime of the algorithm is $O(n \cdot W_{\max} \cdot V_{\max})$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 7.5    Zebra Arrays ![[A&D-e-u07.pdf#page=3&rect=63,99,530,234|A&D-e-u07, p.3]]

```
function zebra(A)
	let m = A.rows()
	let n = A.cols()
	let k = 1
	let Z = [][]	# memoization: m * n
	
	# base case: O(m * n)
	for i in 1 .. m
		for j in 1 .. n
			Z[i][1] = 1
			Z[1][j] = 1
			end
		end
	end
	
	# recurrence relation: O(m * n)
	for i in 2 .. m
		for j in 2 .. n
			# compute subproblem: O(1)
			# largest zebra submatrix with bottom righ at A[i][j]
			let (x, l, u, lu) = (A[i][j], A[i][j-1], A[i-1][j], A[i-1][j-1])
			if x == lu and x != l and x != u then
				Z[i][j] = 1 + min{Z[i][j-1], Z[i-1][j|, Z[i-1][j-1]}
			else
				Z[i][j] = 1
			end
			k = max{k, Z[i][j]}
			end
		end
	end
	
	# extract solution: O(1)
	return k
end
```

1. dimensions of the DP table are $(m+1) \times (n+1)$
2. solution of the subproblems, i.e. meaning of entry $Z[i][j]$ is size $k$ of the largest $k \times k$ zebra array with bottom right corner at $A[i][j]$
3. correctness of the recursion is given by the aforementioned observation, that every zebra array consists of only smaller *sub*-zebra arrays, hence the base case and recurrence relation are correct
4. the calculation order is to first iterate $i$ over $1\dots m$, within which we loop $j$ over $1\dots n$
5. solution can be extracted at $Z[m][n]$
6. runtime of the described algorithm is $O(m \cdot n)$, because of the two nested for loops that iterate over $m$ and $n$
$\square$
