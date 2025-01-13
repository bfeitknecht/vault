
# Topics

A&D:
	pseudo code of algorithms
	topological sort
	runtime of algorithms
	definition of complexity classes $\mathcal{O}, \Theta, \Omega$ by limits
	master theorem

# Exams

- [x] HS18 ✅ 2025-01-08
- [ ] FS19
- [ ] HS19
- [ ] FS20
- [ ] HS20
- [ ] FS21
- [ ] HS21
- [ ] FS22
- [ ] HS22
- [ ] FS23
- [ ] HS23
- [ ] mock exam


# ADT (abstract data types)

## Heap

`extract()`
	replace root with last leaf
	restore heap condition

`insert(n)`
	add `n` as last leaf
	restore heap condition by iteratively swapping up if greater than parent

## BST (binary search tree)

`remove(n)`
	replace `n`with symmetric successor, i.e. left subtree's rightmost child or right subtree's leftmost child

## AVL (balanced BST)

The AVL condition states that left and right subtrees' height differ by at most one, $|h_{l} - h_{r}| \leq 1$.




# Algorithms

## Graphs

- **explore** graphs (directed and undirected)
	![[dfs (algorithm)]]
	![[bfs (algorithm)]]

- construct **MST**
	![[kruskal (algorithm)]]
	![[prim (algorithm)]]
	![[boruvka (algorithm)]]

- find *one to all* **shortest paths**
	![[dijkstra (algorithm)]]
	![[bellman-ford (algorithm)]]

- find *all to all* **shortest paths**
	![[floyd-warshall (algorithm)]]
	![[johnson (algorithm)]]
	
## Sorting

- easy implementations but bad runtime
	![[bubble sort (algorithm)]]
	![[selection sort (algorithm)]]
	![[insertion sort (algorithm)]]

- harder to implement but optimal runtime
	quick sort (algorithm)
	merge sort (algorithm)
	heap sort (algorithm)



# Asymptotic Analysis


Let $f, g : \mathbb{R}_{+} \to \mathbb{R}_{+}$ be two functions. Then $f$ grows asymptotically slower than $g$ if and only if $\lim_{ x \to \infty } \frac{f(x)}{g(x)} = 0 \iff \lim_{ x \to \infty } \frac{g(x)}{f(x)} = \infty$. This can be written as $f \in O(g)$, $f \leq O(g)$ or alternatively $f \ll g$.
- logarithmic functions grow slower than polynomial functions
- all polynomials grow slower than exponentials
- the logarithm doesn't affect the asymptotic growth -> base change trick $\log_{x} z = \frac{\log_{a} z}{\log_{a} x}$

$c \ll \log \log n \ll \log n \ll n \log n \sim \log n! \ll n \ll n^{c} \ll c^{n} \ll n^{n} \sim n!$
