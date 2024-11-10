
Basil Feitknecht, 23-922-099



# 7.1       Subset Sum with Duplicates ![[A&D-e-u07.pdf#page=1&rect=64,388,533,527|A&D-e-u07, p.1]]
1. dimensions of the boolean DP table $S$ are $(b+1) \times (n+1)$, i.e. matrix
2. entry $S[i][j]$, with $i \in [b], j \in [n]$ means that $i$ is *subset sum with duplicates* of first $j$ entries in $A$
3. the correctness of the recurrence relation below is given by the fact, that adding an element solves a new subproblem, whereas not adding it preserves the results of the previous iterations' subproblems, i.e. the solutions of the subproblems together form the solution of the initial problem
   - base case:
```txt
for j = 0 .. n do: S[0][j] = true      // no elements taken yields zero
for i = 1 .. b do: S[i][0] = false     // zero stays zero
```

   - recurrence relation:
```txt
for j = 1 .. n do:
    for i = 1 .. b do:
        a = A[j]
        S[i][j] = S[i][j-1] ||           // don't add new element 
		 (S[i][j-a] && a < j) ||      // add element once
		 (S[i][j-2*a] && 2*a < j)     // add element twice
```

4. we iterate $j$ over $1 \dots n$ and $i$ over $1 \dots b$, thus we compute bottom up
5. solution can be extracted at $S[b][n]$, since that entry encodes if it's possible to make *subset sum with duplicates* $b$ of all $n$ entries $A[1 ..n]$
6. running time is dominated by two nested for loops and thus $O(b \cdot n)$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 7.4       Weight and Volume Knapsack ![[A&D-e-u07.pdf#page=3&rect=67,461,528,567|A&D-e-u07, p.3]]
1. dimensions of the 3d DP table are $(n+1) \times W_{\max} \times V_{\max}$ 
2. the meaning of entry $S[i][j][l]$ is the profit with $i$ items that add up to weight $j$ and volume $l$ 
3. the correctness of recursion is given by the fact that solutions to the subproblems solve the initial problem
   - base case:
```txt
for i = 0 .. n do:
    for j = 0 .. W_max do:
        for l = 0 .. V_max do:
            S[0][j][l] = 0      // zero items zero profit
            S[i][0][l] = 0      // zero weight => zero items ..
            S[i][j][0] = 0      // zero volume ..
```

   - recurrence relation:
```txt
for i = 1 .. n do:
    for j = 1 .. W_max do:
        for l = 1 .. V_max do:
            S[i][j][l] = S[i-1][j-1][l]     // add nothing
            if W[i] < j then:
                S[i][j][l] = S[i-1][j-w[i]][l] + P[i]   // add item if not exceed limits
```

4. calculation order is increasing $i$ then $j$ then $l$
5. extracting solution can be done at $S[n][W_{\max}][V_{\max}]$
6. runtime of the algorithm is $O(n \cdot W_{\max} \cdot V_{\max})$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 7.5    Zebra Arrays ![[A&D-e-u07.pdf#page=3&rect=63,99,530,234|A&D-e-u07, p.3]]
Since every zebra array of size $l$ contains zebra arrays of size $l-1$, we use a bottom up approach. The base case is given for $k=1$, as any single entry $A[i][j]$ is a $1 \times 1$ zebra array with $i \in [n], j \in [m]$.

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
