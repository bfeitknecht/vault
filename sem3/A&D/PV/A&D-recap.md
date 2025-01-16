
# Topics

- [x] pseudo code of algorithms ✅ 2025-01-14
- [ ] topological sort
- [x] runtime of algorithms ✅ 2025-01-14
- [x] definition of complexity classes $\mathcal{O}, \Theta, \Omega$ by limits ✅ 2025-01-14
- [x] master theorem ✅ 2025-01-14
- [ ] add comparisons and swaps asymptotic analysis
- [ ] asymptotic runtime of ADT operations
- [ ] invariants of sorting and graph algorithms




# Exams

- [x] HS18 ✅ 2025-01-08
- [x] FS19 ✅ 2025-01-14
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


## Queue

## Priority Queue

## Stack


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

The AVL condition states that left and right subtrees' height differ by at most one, $|h_{l}(v) - h_{r}(v)| \leq 1$.




# Algorithms

## Graphs

In a directed graph, a topological sorting can be achieved by reversing the `post` order of nodes visited by `dfs`. A graph having a topological sort is equivalent to it being a [[directed acyclic graph (DAG)]].

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
	![[quick sort (algorithm)]]
	![[merge sort (algorithm)]]
	![[heap sort (algorithm)]]


# Asymptotic Analysis


Let $f, g : \mathbb{N} \to \mathbb{R}_{+}$ be two functions. Then $f$ grows asymptotically slower than $g$ if and only if $\lim_{ x \to \infty } \frac{f(x)}{g(x)} = 0$. This can be written as $f \in O(g)$, $f \leq O(g)$ or alternatively $f \ll g$.
- logarithmic functions grow slower than polynomial functions
- all polynomials grow slower than exponentials
- the logarithm doesn't affect the asymptotic growth -> base change trick $\log_{x} z = \frac{\log_{a} z}{\log_{a} x}$

Let $1< c \in \mathbb{R}_{+}$ and $n \to \infty$. Then the following holds.
$$
c \ll \log \dots \log n \ll \log n \ll  n^{c<1} \ll n \ll n \log n \sim \log n! \ll n^{c>1} \ll _{}{1<}c^{n} \ll n^{n} \sim n!
$$

The fact that $f$ grows asymptotically slower than $g$, i.e. $f \ll g \iff f \leq O(g)$ is equivalent to the fact that $g$ grows asymptotically faster than $f$, i.e. $g \gg f \iff g \geq \Omega{(f)}$. If both functions have the same asymptotic growth rate we write $f \sim g \iff f \leq O(g) \land f \leq \Omega(g) \iff f  = \Theta(g) \iff g = \Theta(f)$.  
$$
\lim_{ n \to \infty } \frac{f(n)}{g(n)} = \begin{cases}
0 &\implies f \ll g \\
c &\implies f \sim g\\
\infty &\implies f \gg g
\end{cases}
$$


Proof idea for stirling's approximation $\ln n! \sim n \ln n$.
1. Show $\ln n! \ll n \ln n$. Proof. $\ln n! \leq \ln n^{n} = n \ln n \ll n \ln n$
2. Show $\ln n! \gg n \ln n$. Proof. $\ln n ! \geq \sum_{i=1}^{n} \ln i \geq \sum_{i=\left\lceil  \frac{n}{2}  \right\rceil} ^{n} \ln i \geq \sum_{i = \left\lceil  \frac{n}{2}  \right\rceil}^{n} \ln \frac{n}{2} = \ln \frac{n}{2} \cdot \frac{n}{2} = \cancel{ \frac{1}{2} } n (\ln n \cancel{ - \ln 2 }) \gg n \ln n$


| Sum                            | Formula                               | Bound             |
| ------------------------------ | ------------------------------------- | ----------------- |
| $\sum_{i=1}^{n}i$              | $\frac{n(n+1)}{2}$                    | $\Theta(n^{2})$   |
| $\sum_{i=1}^{n}i^{2}$          | $\frac{n(n+1)(2n+1)}{6}$              | $\Theta(n^{3})$   |
| $\sum_{i=1}^{n}i^{3}$          | $\left( \frac{n(n+1)}{2} \right)^{2}$ | $\Theta(n^{4})$   |
| $\sum_{i=1}^{n} i ^{k_{>0}}$   |                                       | $\Theta(n^{k+1})$ |
| $\sum_{i=0}^{n}c_{\neq 1}^{i}$ | $\frac{c^{n+1} - 1}{c^{n} - 1}$       |                   |

Master theorem. Let $T : \mathbb{N} \to \mathbb{R}_{+}$ be a monotonically increasing function such that for all $n = 2 ^{k}$ with $k \in \mathbb{N}$ the following holds for some $a \in \mathbb{R}_{+}$ and $b \in \mathbb{R}$.
$$
T(n) \leq a T \left( \frac{n}{2} \right) + O(n^{b}) \implies \begin{cases}
b > \log_{2} a &\implies T(n) \ll n^{b} \\
b = \log_{2} a &\implies T(n) \ll n^{\log_{2} a} \log n \\
b < \log_{2} a &\implies T(n) \ll n^{\log_{2} a}
\end{cases}
$$
