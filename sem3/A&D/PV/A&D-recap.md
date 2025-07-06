
# Topics

- [x] pseudo code of algorithms ✅ 2025-01-14
- [x] topological sort ✅ 2025-01-16
- [x] runtime of algorithms ✅ 2025-01-14
- [x] definition of complexity classes $\mathcal{O}, \Theta, \Omega$ by limits ✅ 2025-01-14
- [x] master theorem ✅ 2025-01-14
- [x] add comparisons and swaps asymptotic analysis ✅ 2025-01-16
- [x] asymptotic runtime of ADT operations ✅ 2025-01-20
- [x] invariants of sorting and graph algorithms ✅ 2025-01-19




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
- [x] FS23 ✅ 2025-01-20
- [ ] HS23
- [x] mock exam ✅ 2025-01-20



# Abstract Data Types (ADT)


| Data Structure     | `insert(x)` | `get(x)` | `delete(x)`           |
| ------------------ | ----------- | -------- | --------------------- |
| array              | $O(1)$      | $O(1)$   | $O(n)$                |
| linked list        | $O(n)$      | $O(n)$   | $O(n)$                |
| doubly linked list | $O(1)$      | $O(n)$   | $O(1)$ if index known |

## Heap

`insert(x)`
    add `x` as last leaf
    restore heap condition through sift down (keep swapping with greater / smaller child until invariant restored)
`extract_max()`, `extract_min()`
    replace root with last leaf in last level
    restore heap condition

## BST (binary search tree)

`insert(x)`
    add `x` as a leaf
`remove(x)`
    replace `x`with symmetric successor, i.e. left subtree's rightmost child or right subtree's leftmost child

## AVL (balanced BST)

The AVL condition states that left and right subtrees' height differ by at most one, $|h_{l}(v) - h_{r}(v)| \leq 1$.  In an AVL tree the operations`insert`, `delete` and `find` all require $O(\log n)$.

## Stack

Implemented using linked list. All operations in $O(1)$. FILO.

`push(x)` 
    adds the element `x` to the top of the stack
`pop()`
    returns and deletes the top element in the stack
`peek()`
    returns the top element

## Queue

Implemented with doubly linked list, all operations are in $O(1)$. FIFO.

`enq(x)`
    adds the element at the end
`deq()`
    returns and removes the front element

## Priority Queue

Implemented with heap, operations in $O(\log n)$.

`enq_prio(x, p)`
    adds the element with the provided priority
`exctract_max()`
    returns and removes the element with top priority

## Union Find

`make(V)`
    creates a union find from the vertex set in $O(n)$
`find(u)
    returns the connected component of $u$ in $O(n)$
`same(u, v)
    returns true if $u$ and $v$ have the same connected component in $O(1)$
`union(u, v)`
    connects the CCs of $u$ and $v$ in $\Theta(n)$, on average (choose smaller CC) $O(\log n)$


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
    ![[shortest path with DP in DAG]]
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

Let $c_{-}, c_{+} \in \mathbb{R}_{+}$ with $c_{-} < 1 < c_{1}$and $n \to \infty$. Then the following holds.
$$
c \ll \log \dots \log n \ll \log n \ll  n^{c_{-}} \ll n \ll n \log n \sim \log n! \ll n^{c+} \ll c_{+}^{n} \ll n! \ll n^{n}
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


| Sum                            | Formula                               | Bound              |
| ------------------------------ | ------------------------------------- | ------------------ |
| $\sum_{i=1}^{n}i$              | $\frac{n(n+1)}{2}$                    | $\Theta(n^{2})$    |
| $\sum_{i=1}^{n}i^{2}$          | $\frac{n(n+1)(2n+1)}{6}$              | $\Theta(n^{3})$    |
| $\sum_{i=1}^{n}i^{3}$          | $\left( \frac{n(n+1)}{2} \right)^{2}$ | $\Theta(n^{4})$    |
| $\sum_{i=1}^{n} i ^{k_{>0}}$   |                                       | $\Theta(n^{k+1})$  |
| $\sum_{i=0}^{n}c_{\neq 1}^{i}$ | $\frac{c^{n+1} - 1}{c^{n} - 1}$       |                    |
| $\sum_{i=0}^{n} \log i$        | $\log n^{n}$                          | $\Theta(n \log n)$ |

Master theorem. Let $T : \mathbb{N} \to \mathbb{R}_{+}$ be a monotonically increasing function such that for all $n = 2 ^{k}$ with $k \in \mathbb{N}$ the following holds for some $a \in \mathbb{R}_{+}$ and $b \in \mathbb{R}$.
$$
T(n) \leq a T \left( \frac{n}{2} \right) + O(n^{b}) \implies \begin{cases}
b > \log_{2} a &\implies T(n) \ll n^{b} \\
b = \log_{2} a &\implies T(n) \ll n^{\log_{2} a} \log n \\
b < \log_{2} a &\implies T(n) \ll n^{\log_{2} a}
\end{cases}
$$

The MST algorithms are ordered, `prim` << `boruvka` << `kruskal`.

For a graph $G = (V, E)$ the following statements are equivalent.
1. $G$ is a tree
2. $G$ is connected and $|E] = |V| - 1$
3. $G$ is connected and contains no cycles
   - removing an edge disconnects it
   - adding an edge creates a cycle



| Algorithm      | Best                     | Average                      | Worst                          | Space  |
| -------------- | ------------------------ | ---------------------------- | ------------------------------ | ------ |
| bubble sort    | $\Theta(n^{2}), O(1)$    | $\Theta(n^{2}), O(n^{2})$    | $\Theta(n^{2}), \Theta(n^{2})$ | $O(1)$ |
| selection sort | $\Theta(n^{2}), O(1)$    | $\Theta(n^{2}), O(n)$        | $\Theta(n^{2}), O(n)$          | $O(1)$ |
| insertion sort | $\Theta(n \log n), O(1)$ | $\Theta(n \log n), O(n^{2})$ | $\Theta(n \log n), O(n^{2})$   | $O(1)$ |
| merge sort     | $\Omega(n \log n)$       | $\Theta(n \log n)$           | $O(n \log n)$                  | $O(n)$ |
| quick sort     | $O(n \log n)$            | $O(n \log n)$                | $O(n^{2})$                     | $O(n)$ |
| heap sort      | $O(n \log n)$            | $O(n \log n)$                | $O(n \log n)$                  | $O(1)$ |


# Dynamic Programming (DP)


## Maximum Subarray Sum

subproblem
    $R_{j} = \max_{i \leq j} \sum_{k = i}^{j}A[k]$

recurrence relation
    $R_{j} = \max \{ A[j], A[j] + R_{j-1} \}$

extracting solution
    $\max \{ R_{j \in [m]}, 0 \}$


## Jump Game

```
function min_jump(A)
    let k = 0
    let M = []
    M[0] = 1
    M[-1] = 0
    
    while M[k] < n
        k++
        M[k] = max{i + A[i] | M[k-2] < i <= M[k-1]}
    end
    
    return k
end
```


## Longest Common Subsequence

```
function LCS(A, B)
    let n = |A|
    let m = |B|
    let L = [][]
    
    for j in 1 .. n L[0][j] = 0 end
    for i in 1 .. m L[i][0] = 0 end
    
    for i in 1 .. m
        for j in 1 .. n
            L[i][j] = A[i] == B[j] ? max{1 + L[i-1][j-1], L[i-1][j], L[i][j-1]} :
                max{L[i-1][j], L[i][j-1]}
        end
    end
    
    return L[m][n]
end
```

