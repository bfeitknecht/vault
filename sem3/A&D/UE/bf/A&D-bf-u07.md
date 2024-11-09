
Basil Feitknecht, 23-922-099



# 7.1       Subset Sum with Duplicates ![[A&D-e-u07.pdf#page=1&rect=64,388,533,527|A&D-e-u07, p.1]]
1. dimensions of the boolean DP table $S$ are $(b+1) \times (n+1)$, i.e. matrix
2. entry $S[i][j]$, with $i \in [b], j \in [n]$ means that $i$ is *subset sum with duplicates* of first $j$ entries in $A$
3. the correctness of the recurrence relation below is given by the fact, that adding an element solves a new subproblem, whereas not adding it preserves the results of the previous iterations' subproblems, i.e. the solutions of the subproblems together form the solution of the initial problem
   
   - base case:
```txt
for j = 0 .. n: S[0][j] = true      // no elements taken yields zero
for i = 1 .. b: S[i][0] = false     // zero stays zero
```

 - recurrence relation:
```txt
for j = 1 .. n:
    for i = 1 .. b:
        a = A[j]
        S[i][j] = S[i][j-1] || (S[i][j-a] && a < j) || (S[i][j-2*a] && 2*a < j)
```

4. we iterate $j$ over $1..n$ and $i$ over $1..b$, thus we compute bottom up
5. solution can be extracted at $S[b][n]$, since that entry encodes if it's possible to make *subset sum with duplicates* $b$ of all $n$ entries $A[1 ..n]$
6. running time is dominated by nested for loops and thus $O(b \cdot n)$

<div class="page-break" style="page-break-before: always;"></div>

# 7.4       Weight and Volume Knapsack ![[A&D-e-u07.pdf#page=3&rect=67,461,528,567|A&D-e-u07, p.3]]
1. dimensions
2. subproblems (meaning of entry)
3. recursion (base case, recurrence correctness)
4. calculation order
5. extracting solution
6. runtime



<div class="page-break" style="page-break-before: always;"></div>

# 7.5    Zebra Arrays ![[A&D-e-u07.pdf#page=3&rect=63,99,530,234|A&D-e-u07, p.3]]
Since every zebra array of size $l$ contains zebra arrays of size $l-1$, we use a bottom up approach. The base case is given for $k=1$, as any single entry $A[i][j]$ is a $1 \times 1$ zebra array with $i \in [n], j \in [m]$.


1. dimensions of the DP table are ...
2. subproblems (meaning of entry)
3. recursion (base case, recurrence correctness)
4. calculation order
5. extracting solution
6. runtime of the described algorithm is $O(nm)$, because of the two nested for loops that iterate over $n$ and $m$






