
The **merge sort** is another divide and conquer algorithm. It splits arrays in half until they are trivially sorted and then merges them.

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
	let k = 1
	
	while i <= m and j <= r do
		if A[i] < A[j] then
			B[k] = A[i]
			i++
		else
			B[k] = A[j]
			j++
		end
		k++
	end
	
	while i <= m do
		B[k] = A[i]
		i++
		k++
	end
	
	while j <= r do
		B[k] = A[j]
		i++
		k++
	end
	
	A[l..r] = B
end
```