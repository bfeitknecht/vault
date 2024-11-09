
Basil Feitknecht, 23-922-099



# 7.1       Subset Sum with Duplicates ![[A&D-e-u07.pdf#page=1&rect=64,388,533,527|A&D-e-u07, p.1]]
We use a boolean DP table.

```lua
function subsetsum_duplicates(A)
    
end
```


1. dimensions of the DP table are $b\times n$
2. entry $S[i][j]$, with $i \in [b], j \in [n]$ means that $i$ is *subset sum with duplicates* of first $j$ entries in $A$
3. the recursion is given by $S[i][j] = S[i][j-1] \lor i=A[i] \lor i=2A[i]$, if $a> b$ or $2a>b$ we simply break out early
    - base case corresponds to only evaluating the first entry $a = A[1]$, then $S[0][1] = S[a][1] = S[2a][1] =$ `true`
    - recurrence relation is correct because all previously possible subset sums with duplicates, plus zero once and twice current
4. we iterate from 1 .. n and in that loop we iterate from 0 .. b, so bottom up
5. solution is given by dp at b, n, since that means wether or not we can make b with all n entries
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






