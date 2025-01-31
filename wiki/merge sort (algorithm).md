
The **merge sort** is another divide and conquer algorithm. It splits arrays in half until they are trivially sorted and then merges them. It runs in $\Theta(n \log n)$ with the invariant to prove its correctness being that an array of length $k$ is correctly sorted after execution, $I(k) = A[1 .. k] \checkmark$ and that the `merge` procedure correctly produces one sorted array from two sorted subarrays. This is done in $O(n)$, since every element is only read and written once.

```
function mergesort(A, l, r)
	if l < r then
		let m = floor((l + r) / 2)
		mergesort(A, l, m)
		mergesort(A, m+1, r)
		merge(A, l, m, r)
	end
end

function merge(A, l, m, r)
	let B = [] with |B| = r - l + 1
	let i = l
	let j = m + 1
	let k = 1		# if zero-index then k = 0 
	
	while i <= m and j <= r do
		if A[i] < A[j] then
			B[k++] = A[i++]
		else
			B[k++] = A[j++]
		end
	end
	
	while i <= m do
		B[k++] = A[i++]
	end
	
	while j <= r do
		B[k++] = A[j++]
	end
	
	A[l..r] = B
end
```