
# Topics

A&D:
	pseudo code of algorithms
	runtime of algorithms
	definition of complexity classes by limits
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
	- replace `n`with symmetric successor
	- left subtree's rightmost child or right subtree's leftmost child

## AVL (balanced BST)

The AVL condition states that left and right subtrees' height differ by at most one, $|h_{l} - h_{r}| \leq 1$.




# Algorithms

## Graphs

- **explore** graphs (directed and undirected)
	![[dfs (algorithm)]]
	![[bfs (algorithm)]]
- construct **MST**
	kruskal
	prim
	boruvka

find **shortest paths**
	dijkstra
	bellman-ford
	floyd-warshall
	johnson
	

## Sorting

![[bubble sort (algorithm)]]

insertion sort

selection sort

quick sort

merge sort

heap sort
