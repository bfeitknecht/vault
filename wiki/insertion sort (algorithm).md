
In the **insertion sort** algorithm, the invariant to uphold is that after $j$ iterations, the subarray of the first $j$ elements is in increasing order, $I(j) = {\Huge \leq}_{i \in [n]} A[i]$. It runs in $\Theta(n^{2})$ with $O(n^{2})$ swaps.

```
function insertionsort(A)
	for i in 2 .. n
		let k = argmin(A[i] <= A[j]) with j in [i-1]	# first unordered element's index
		let x = A[i]
		A[k+1..i] = A[k..i-1]
		A[k] = x
	end
end
```
