
The **selection sort** algorithm fulfills the same invariant as [[bubble sort (algorithm)]], after $j$ iterations the $j$ largest elements are in the correct position, $I(j) = A[1 .. j] \uparrow$. It runs in $O(n^{2})$.

```
function selectionsort(A)
	for i in n .. 1
		let k = argmax(A[1..i])		# index of maximum of first i elements
		swap(A, k, i)
	end
end
```