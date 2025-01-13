
In the **insertion sort** algorithm, the invariant to uphold is that after $j$ iterations, the subarray of the first $j$ elements is in increasing order, $I(j) = {\Huge \leq}_{i \in [n]} A[i]$. It runs in $\Theta(n^{2})$ with $O(n^{2})$ swaps.

```
function insertionsort(A)
	for i in 2 .. n
	let k = argmin(A[j] > A[i]) where j in 1..i-1	# first out of order element's index
	let x = A[i]
	move A[k..i-1] to A[k+1..i]
	A[k] = x
end
```
