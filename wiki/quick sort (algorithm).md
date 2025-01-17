
The **quick sort** algorithm is easy to implement and has optimal runtime for comparison based sorting algorithms. It's a [[divide and conquer]] approach that splits the array into subarrays until they are trivially sorted and then combines them. It's worst case runtime is $O(n^{2})$, in practice however (using a random pivot) it achieves $\Theta(n \log n)$. This implementation of the `partition` function does not require additional memory space and as such the algorithm is in-place. The invariant to prove the correctness is that the left and right subarrays contain the elements smaller and greater than the pivot, respectively. This is to say that the pivot $p$ is at the correct position $I(l, r) = \forall a_{l} \in A[l .. m-1], a_{r} \in A[m+1 .. r] : a_{l} < p < a_{r} = A[p] \checkmark$.

```
function quicksort(A, l, r)
	if l < r then
		let k = partition(A, l, r)
		quicksort(A, l, k - 1)
		quicksort(A, k + 1, r)
	end
end

function partition(A, l, r)
	let i = l
	let j = r - 1
	
	do
		while i < r and A[i] <= p do i++ end
		while j > l and A[j] > p do j-- end
		if i < j then
			swap(A, i, j)
		end
	while i <= j
	
	swap(A, i, r)
	return i
end
```
