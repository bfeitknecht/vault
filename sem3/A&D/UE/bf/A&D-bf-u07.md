
Basil Feitknecht, 23-922-099



# 7.1       Subset Sum with Duplicates ![[A&D-e-u07.pdf#page=1&rect=64,388,533,527|A&D-e-u07, p.1]]
To boolean dp table, where 

1. dimension of the dp table is b times n
2. entry i, j means that we can make subset sum with duplicates i with the first j entries in the array
3. base case: n = 1, i.e. only the first entry of array, then we can make make zero, once or twice that entry recurrence relation is, all previously possible subset sums with duplicates, plus zero once and twice current
4. we iterate from 1 .. n and in that loop we iterate from 0 .. b, so bottom up
5. solution is given by dp at b, n, since that means wether or not we can make b with all n entries
6. running time is dominated by nested for loops and thus $O(b \cdot n)$





<div class="page-break" style="page-break-before: always;"></div>

# 7.4       Weight and Volume Knapsack ![[A&D-e-u07.pdf#page=3&rect=67,461,528,567|A&D-e-u07, p.3]]
1. dimensions
2. supbroblems (meaning of entry)
3. recursion (base case, recurrence correctness)
4. calculation order
5. extracting solution
6. runtime



<div class="page-break" style="page-break-before: always;"></div>

# 7.5    Zebra Arrays ![[A&D-e-u07.pdf#page=3&rect=63,99,530,234|A&D-e-u07, p.3]]
1. dimensions of the DP table are ...
2. supbroblems (meaning of entry)
3. recursion (base case, recurrence correctness)
4. calculation order
5. extracting solution
6. runtime of the described algorithm is $O(nm)$, because of the two nested for loops that iterate over $n$ and $m$






