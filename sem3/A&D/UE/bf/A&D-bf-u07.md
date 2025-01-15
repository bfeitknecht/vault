
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
function weight_volume_knapsack(P, W, weight, volume)
	let n = |P|
	let K = [][][]		# memoization: n * weight * volume
	
	# base case: O(weight * volume)
	for w in 0 .. weight
		for v in 0 .. volume
			K[0][w][v] = 0
		end
	end
	
	# recurrence relation: O(n * weight * volume)
	for i in 1 .. n
		for w in 1 .. weight
			for v in 1 .. volume
				# compute subproblem: O(1)
				# maximum profit of items P[1..i] respecting limit of weight and volume
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
	return K[n][weight][volume]
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
Since every zebra array of size $l$ contains zebra arrays of size $l-1$, we use a bottom up approach. The base case is given for $k=1$, as any single entry $A[i][j]$ is a $1 \times 1$ zebra array with $i \in [n], j \in [m]$.


```
function zebra(A)
	let m = A.rows()
	let n = A.cols()
	let Z = [][]	# memoization: m * n table
	
	# base case: O(m + n)
	
	for i in 1 .. m
		for j in 1 .. n
			# compute subproblem: O(1)
			let a = A[i][j]
			if a == A[i+1][j+1] and a != A[i][j+1] and a != A[i+1][j] then
				Z[i][j]++
			end
		end
	end
	
	# extract solution: O(1)
	return k
end
```


# a


1. dimensions of the DP table are $(n+1) \times (m+1)$
2. solution of the subproblems, i.e. meaning of entry $S[i][j]$ is size $k$ of the largest $k \times k$ zebra array with lower right corner at $A[i][j]$
3. correctness of the recursion is given by the aforementioned observation, that every zebra array consists of only smaller *sub*-zebra arrays, hence the base case and recurrence relation as defined below
   - base case:
```txt
for i = 0 .. n do: S[0][i] = 1
for j = 0 .. m do: S[j][0] = 1
```

   - recurrence relation:
```txt
for i = 1 .. n do:
    for j = 1 .. m do:
        if A[i][j] != A[i-1][j] then: S[i-1][j] + 1
        if A[i][j] != A[i][j-1] then: S[i][j-1] + 1
        if A[i][j] != A[i-1][j-1] then: S[i-1][j-1] + 1
```

4. the calculation order is to first iterate $i$ over $1\dots n$, within which we loop $j$ over $1\dots m$
5. solution can be extracted at $S[n][m]$
6. runtime of the described algorithm is $O(nm)$, because of the two nested for loops that iterate over $n$ and $m$
$\square$
