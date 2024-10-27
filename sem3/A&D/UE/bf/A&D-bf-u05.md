
Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099


# 5.1
## (a)
![[A&D-e-u05.pdf#page=1&rect=84,351,558,530|A&D-e-u05, p.1]]

The max-heap obtained after inserting the elements $70$ and $51$ in that order is given below.

```mermaid
graph TD

classDef hidden display: none;
S:::hidden

id0((82))
id1((63))
id2((61))
id3((43))
id4(54)
id5(19)
id6(48)
id7(24)
id8(27)
id9(10)

id10((70))
id11((51))

id0 --> id10 
id0 --> id2
id10 --> id3 & id1
id2 --> id11 & id6
id3 --> id7 & id8
id1 --> id9 & id4
id11 --> id5
id6 ~~~ S
```

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u05.pdf#page=1&rect=84,138,559,351|A&D-e-u05, p.1]]

The max-heap obtained after two `extractMax()` operations is given below.

```mermaid
graph TD

id0((27))
id1((23))
id2((25))
id3((11))
id4((12))
id5((14))
id6((17))
id7(9)
id8(5)
id9(8)
id10(19)
id11(6)
id12(3)
id13(1)

id0 --> id1 & id2
id1 --> id3 & id4
id2 --> id5 & id6
id3 --> id7 & id8
id4 --> id9 & id10
id5 --> id11 & id12
id6 --> id13
```

<div class="page-break" style="page-break-before: always;"></div>

# 5.3
![[A&D-e-u05.pdf#page=2&rect=65,378,530,472|A&D-e-u05, p.2]]
___
![[A&D-e-u05.pdf#page=2&rect=67,114,528,160|A&D-e-u05, p.2]]

## (a)
![[A&D-e-u05.pdf#page=3&rect=85,666,538,776|A&D-e-u05, p.3]]

We show that the number of comparisons $T(n)$ satisfies the given recurrence relation. 
$$
\begin{align}
& T(1) = 0,
& T(n) = T(n-1) + (n-1), && \forall n \geq 2
\end{align}
$$
To do this, we apply a case distinction on $n$.

**Case** $n=1$

The condition `if l < r` evaluates to false so the algorithm makes no comparisons, thus $T(1)=0$.


**Case** $n\geq2$

We use the assumption that `partition(A, l, r)` always performs exactly $r-l$ comparisons. Since, the `if` condition evaluates to true, we call the`partition` method with the arguments $l=1, r=n$. Thus, we perform $n-1$ comparisons.

Then we note that the two recursive function calls on line 4, `quicksort(A, l, k-1)` and line 5, `quicksort(A, k+1, r)` together cover the range $[1, n-1]$, thus they must perform exactly $T(n-1)$ comparisons, by definition of $T$.

So the final formula for the number of comparisons is exactly the recurrence relation, $T(n) = T(n-1) + (n-1), \quad\forall n\geq2$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[A&D-e-u05.pdf#page=3&rect=84,580,537,663|A&D-e-u05, p.3]]

We note, that for $n \geq 3$, we can rewrite the recurrence relation as $T(n) = \big( T(n-2)+(n-2) \big) + (n-1)$. Similarly, for $n \geq 4$, the formula becomes $T(n) = \Big( \big(T(n-3) + (n-3) \big) + (n-2) \Big) + (n-1)$.

We make the observation, that this pattern will continue, i.e. the number of comparisons taken follows the sum from $0$ to $n-1$. This yields the closed form for $T(n)$ stated below.
$$
\begin{align}
T(n) &= \sum_{i=0}^{n-1} i \\
&= \frac{n(n-1)}{2} = \frac{n^{2}-n}{2}
\end{align}
$$

We will now evaluate the limit between $T(n)$ and the function $f(n)=n^{2}$.
$$
\begin{align}
\lim_{ n \to \infty } \frac{T(n)}{f(n)} &= \lim_{ n \to \infty } \frac{\frac{n^{2}-n}{2}}{n^{2}} \\
&= \lim_{ n \to \infty } \frac{n^{2}-n}{2n^{2}} \\
&= \lim_{ n \to \infty } \frac{\cancel{ n^{2} }\left( 1 - \frac{1}{n} \right)}{2\cancel{ n^{2} }}  \\
&= \lim_{ n \to \infty } \frac{1 \cancel{ -\frac{1}{n} }}{2} \\
&=\frac{1}{2} \in \mathbb{R}
\end{align}
$$

Since the limit of the ratio between $T(n)$ and $f(n)$ is a constant, $T(n) = \Theta(n^{2})$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 5.4
![[A&D-e-u05.pdf#page=3&rect=66,412,530,539|A&D-e-u05, p.3]]
![[A&D-e-u05.pdf#page=3&rect=64,185,531,408|A&D-e-u05, p.3]]
![[A&D-e-u05.pdf#page=3&rect=66,139,534,173|A&D-e-u05, p.3]]

## (a)
Prove that executing $\mathrm{heapify}(T )$ returns a valid heap.
![[A&D-e-u05.pdf#page=4&rect=84,727,531,773|A&D-e-u05, p.4]]

We prove the correctness of $\mathrm{heapify}(T)$ for some binary tree $T$ with $n\geq2$ nodes by process of mathematical induction. To do this, we use the given invariant $I(t)$ on the levels of $T$, i.e. we show that $I(0)$ holds after executing the algorithm.


**Base Case** $h=\mathrm{height}(T)$

This trivially holds, as the nodes at level $\mathrm{height}(T)$ are all leaves and thus fulfill the heap condition, since they have no children. Thus the invariant $I(\mathrm{height}(T))$ is proven.


**Induction Hypothesis** $h = t+1$

We assume that the invariant $I(t+1)$ holds for some $t \leq \mathrm{height}(T)-1$, i.e. all nodes in levels from $t+1$ down to $\mathrm{height}(T)$ fulfill the heap condition.

<div class="page-break" style="page-break-before: always;"></div>

**Induction Step** $h=t$

Now we consider an iteration of the algorithm at an arbitrary level $t \leq \mathrm{height}(T)-1$. For each node $N$ at this level $t$, we check its two children $C_{1}, C_{2}$ in level $t+1$, if they exist. From our induction hypothesis we know that all subtrees rooted at level $t+1$ fulfill the heap condition. Then we make the following case distinction.

*Case* $\mathrm{key}(N)\geq \mathrm{key}(C_{1}), \mathrm{key}(C_{2})$
> In this case, $N$ and its children fulfill the heap condition and we can move on.

*Case* $\mathrm{key}(N) < \mathrm{key}(C)$
> Without loss of generality, let $C$ denote a child node of $N$ such that the above condition holds. In this case, the algorithm *swaps* the nodes $N$ and $C$ during the execution of the appropriate `if` statement. 
> 
> After this, it restores the heap condition in the subtree rooted at $N$ in level $t+1$, repeating the procedure described above. This *pushes* the node $N$ down to a level such that the key of its parent node $P$ is greater than or equal to its own $\mathrm{key}(P)\geq \mathrm{key}(N)$.
> 

Iterating over all nodes at level $t$ results in the invariant $I(t)$. Specifically, happens in every iteration of the outermost `for` loop, converting the binary tree to a valid heap from bottom up.

Then it follows that the invariant $I(0)$ holds for an arbitrary complete binary tree $T$ with $n \geq 2$ nodes and thus we've shown the correctness of the algorithm $\mathrm{heapify}(T)$, returning a valid heap $H$.
$\square$
