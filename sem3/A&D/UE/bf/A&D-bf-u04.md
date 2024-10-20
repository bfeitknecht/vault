
Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099


# 4.3
Prove the correctness of *insertion sort* by mathematical induction.
![[A&D-e-u04.pdf#page=3&rect=67,677,530,779|A&D-e-u04, p.3]]
![[A&D-e-u04.pdf#page=3&rect=68,625,526,642|A&D-e-u04, p.3]]

We will show that the invariant below holds for any $j \in \mathbb{N}_{+}$.
$$
I(j) = \text{"after $j$ iterations the first $j$ elements are sorted“}
$$

**Base Case** $j = 1$

The algorithm doesn‘t iterate, since $j \not> 1$. However, any one element array is sorted. Thus, the invariant holds.


**Induction Hypothesis** $j=k$

We assume the invariant to hold, i.e. $I(k)$ is true for an arbitrary $k\in \mathbb{N}_{+}$. This means that after $k$ iterations of the algorithm, the first $k$ elements of the array are now sorted, $A[1] \leq A[2] \leq \dots \leq A[k]$, while the next $n-k$ elements are still unsorted.


**Inductive Step** $j=k+1$

We need to prove that the invariant $I(k+1)$ holds. To do this, let‘s assume we are at the $k$-th iteration of the algorithm. According to the $\mathrm{IH}$, this implies that the first $k$ elements of the array are sorted, i.e. $I(k)$ holds. For the next iteration of the algorithm, we use a case distinction.

*Case* $A[k+1] < A[k]$
This is the case where the element at index $k+1$ is smaller than the $k$-th element, which means it needs to be *inserted* at the correct index $l \in [k]$ in the first $k$ elements such that $A[l-1] \leq A[l] \leq A[l+1]$.

First, it gets swapped with the element at index $k$. This restores the invariant for the last two of the first $k$ elements. In the next $k-1$ iterations of the inner loop, it gets pushed back to its correct position through a series of swaps based on the condition, that $A[i+1]< A[i]$. That is, the invariant gets restored from the end of the first $k$ elements. At $i=1$, all the first $k+1$ elements are sorted again and the invariant $I(k+1)$ holds.


*Case* $A[k+1] \not< A[k] \implies A[k+1] \geq A[k]$
This is the case that the element at index $k+1$ is greater than or equal the $k$-th element, which means the first $k+1$ elements are sorted and the invariant $I(k+1)$ trivially holds.

Thus, we have proven the correctness of insertion sort through induction.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


# 4.4
![[A&D-e-u04.pdf#page=3&rect=67,519,526,577|A&D-e-u04, p.3]]

## (a)
![[A&D-e-u04.pdf#page=3&rect=87,418,532,517|A&D-e-u04, p.3]]

We find the pivot $k$ in a given weird array $A$ using a modification of the binary search algorithm. As a nice side effect, we sort the array in constant time after having found the pivot.

The correctness of the algorithm is given by the fact that the weird array contains only unique elements and the subarrays induced by the pivot are sorted in ascending order. This implies that the pivot is exactly the index of the element that is greater than the element directly proceeding it. Since we half the search range in every iteration, the algorithm’s runtime is in $O(\log n)$.

```
// algorithm to determine pivot element in weird array
// based on modified binary search
// runtime:		O(log n)
// input:		integer array A of length n
// output: 		integer pivot

function weird-sort(A) begin
	let l = 1			// left
	let r = n			// right
	let m = (l+r)/2		// middle split
	
	while l <= r do
		m = (l+r)/2							// middle split
		
		if A[m] > A[m+1] then break end		// found pivot
		if A[m] < A[1] then					// search left
			r = m - 1
		elseif A[m] > A[n]					// search right
			l = m + 1
		end
	end
	
	let M = []
	M[1..m-n] = A[m+1..n]
	M[m-n+1..n] = A[1..m]
	A = M	
	return m
end
```
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u04.pdf#page=3&rect=87,357,534,415|A&D-e-u04, p.3]]

To determine if a given weird array $A$ contains an element $l$, we first sort the array with the algorithm from subtask (a). Then we apply binary search on the now sorted array with the element $l$.

The correctness of the algorithm is given by the fact that the array is now sorted and the correctness of binary search. Its runtime is that of the algorithm from subtask (a) plus that of binary search, $O(\log n) + O(\log n) = O(2\log n) \leq O(\log n)$.

```
// algorithm to determine if weird array contains given element
// runtime:		O(log n)
// input:		integer l, integer array A of length n
// output:		boolean contains
 
function weird-contains(l, A) begin
	// sort array with algorithm from (a)
	weird-sort(A)
	
	// find element l if it exists using binary search
	return binary-search(l, A) == l
end
```
$\square$

<div class="page-break" style="page-break-before: always;"></div>


![[A&D-e-u04.pdf#page=1&rect=66,342,530,516|A&D-e-u04, p.1]]
# 4.5
![[A&D-e-u04.pdf#page=3&rect=68,240,529,310|A&D-e-u04, p.3]]

## (a)
![[A&D-e-u04.pdf#page=3&rect=68,114,530,235|A&D-e-u04, p.3]]
![[A&D-e-u04.pdf#page=4&rect=65,706,523,774|A&D-e-u04, p.4]]

The number of function calls to $f$ is given below.
$$
\begin{align}
T(n) &= \sum_{i=1}^{n} \sum_{j=1}^{n^{i}} 1 &\text{(constant sum)} \\
&= \sum_{i=1}^{n} n^{i} &\text{(adjust range)} \\
&= \left( \sum_{i=0}^{n}n^{i} \right) -1 &\text{(finite geometric series, $n \neq 1$)} \\
&= \frac{n^{n+1}-1}{n-1} - 1 = \frac{n^{n+1}-n}{n-1} \\
%% &= \frac{n(n^{n}-1)}{n\left( 1-\frac{1}{n} \right)} = \frac{n^{n}-1}{1-\frac{1}{n}}
\end{align}
$$

We will now show that $T(n) = \Theta(n^{n})$, by definition of $\Theta$. Let $g(n)=n^{n}$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{T(n)}{g(n)} &= \lim_{ n \to \infty } \frac{\frac{n^{n+1}-n}{n-1}}{n^{n}} \\
&= \lim_{ n \to \infty } \frac{n^{n+1}-n}{n^{n}(n-1)} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^{n+1} }\left( 1-\frac{1}{n^{n}} \right)}{\cancel{ n^{n+1} }\left( 1-\frac{1}{n} \right)} \\
&= \lim_{ n \to \infty } \frac{1 \cancel{ - \frac{1}{n^{n+1} }}}{1 \cancel{ - \frac{1}{n} }} \\
&= 1 \in \mathbb{R} \implies T(n) = \Theta(n^{n}) &\square
\end{align}
$$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u04.pdf#page=4&rect=65,487,529,697|A&D-e-u04, p.4]]
![[A&D-e-u04.pdf#page=4&rect=82,405,531,474|A&D-e-u04, p.4]]

The number of calls to $f$ is given by the following.
$$
\begin{align}
T(n) &= 3T\left( \left\lfloor \tiny\frac{n}{2} \right\rfloor  \right) + \sum_{i=1}^{n} \sum_{j=i}^{n}2 \\
&= 3T\left( \left\lfloor \tiny\frac{n}{2} \right\rfloor  \right) + \sum_{i=1}^{n} \sum_{j=i}^{n}2 \\
&= 3T\left( \left\lfloor  \tiny\frac{n}{2} \right\rfloor \right) +2 \sum_{i=1}^{n}(n+1-i) \\
&= 3T\left( \left\lfloor \tiny\frac{n}{2} \right\rfloor  \right) + n(n+1) \\
&= 3T \left( \left\lfloor \tiny\frac{n}{2}  \right\rfloor  \right) + n^{2} + n \\
&\leq 3T\left( \frac{n}{2} \right) + 2n^{2} &\text{(1)}
\end{align}
$$

Since we assume the function $T$ to be increasing, we can drop the restriction on $n$ being even. The master theorem on $(1)$ implies that $T(n) \leq O(n^{2})$.

We will now show that $T(n) \geq \Omega(n^{2})$. Let $g(n)=T\left( \frac{n}{2} \right) + n^{2}$.
$$
\begin{align}
g(n) &\leq T(n) \\
&\leq 3T\left( \frac{n}{2} \right) + 2n^{2} &\text{(2)}
\end{align}
$$

The master theorem on $(2)$ implies that $g(n) \leq O(T(n))$, which in turn implies $T(n) \geq \Omega(n^{2})$. Since $T(n) \leq O(n^{2})$ and $T(n)\geq \Omega(n^{2})$, we can conclude that $T(n) =\Theta(n^{2})$.
$\square$
