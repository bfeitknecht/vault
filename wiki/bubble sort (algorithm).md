
The **bubble sort** algorithm is one of the most naive sorting algorithms. It only considers adjacent elements and swaps them if they are in the wrong order, repeating for all possible pairs. It runs in $\Theta(n^{2})$ with the number of comparisons and swaps in $O(n^{2})$.

```
function bubblesort(A)
	for i in 1 .. n
		for j in 1 .. n
			if A[i] > A[i+1] then
				swap(A, i, i+1)
			end
		end
	end
end
```