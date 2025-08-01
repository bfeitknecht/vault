Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099

# 6.1 ![[A&D-e-u06.pdf#page=1&rect=68,300,533,497|A&D-e-u06, p.1]]

<div class="page-break" style="page-break-before: always;"></div>


## (e) ![[A&D-e-u06.pdf#page=1&rect=84,95,534,148|A&D-e-u06, p.1]]

To begin we'll formulate the statement to prove as an invariant. Let's define the invariant that denotes for any non-leaf node in the tree $T_{k}$, the absolute difference between its left and right subtrees' heights is exactly equal to one, as follows.
$$
I(k) = \forall u \in T_{k}, \mathrm{deg}_{\text{out}}(u) \neq 0 : |h_{l}(u)-h_{r}(u)|=1
$$

We use the fact from $\text{(c)}$ that $\forall k \in \mathbb{N} : \mathrm{height}(T_{k}) = k$ and prove $I(k)$ by induction on $k$.


**Base Case** $k \leq 3$

For $k=1$ we have only one node, namely the root, which is a leaf. Hence $I(1)$ holds trivially.

For $k=2$, we have the root node which is not a leaf. It's left subtree consists of a single leaf, whereas its right subtree doesn't exist and thus has height zero. Then $|1-0|=1$ and $I(2)$ holds.

For $k=3$ there are two non-leaf nodes to consider. Per definition of fibonacci trees, the invariant holds for the subtree rooted at the left child of the root in $T_{3}$, since it's identical to $T_{2}$, which we've just covered before. Then for the root, we consider the absolute difference of its left and right subtrees' heights, which is $|2-1|=1$ so the invariant also holds. Thus $I(3)$ holds.


**Induction Hypothesis** $k = h$

We assume that $\exists h \in \mathbb{N}$ such that $I(h)$ holds for $T_{h}$.


**Induction Step** $k = h+1$

We now show that $I(h+1)$ holds. Per definition, the root $v_{r}$ of the tree $T_{h+1}$ has as left subtree $T_{h}$ and right subtree $T'_{h-1}$, a modification of $T_{h-1}$ that adds $\mathrm{Fib}(h+2)$ to every node. It's noted that this does not affect the height of the tree. Then we have $|h_{l}(v_{r})-h_{r}(v_{r})|=|h-(h-1)|=1$, so the root node fulfills the invariant.

Then the induction hypothesis that we assume to be true, guarantees that the root's left and right subtrees fulfill the invariants $I(k)$ and $I(k-1)$ respectively. Per definition of fibonacci trees, $I(h) \implies I(h-1)$ which covers all other non-leaf nodes.

Hence, the invariant $I(h+1)$ holds and the statement is proven.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


## (f) ![[A&D-e-u06.pdf#page=2&rect=84,722,527,772|A&D-e-u06, p.2]]

We show this by induction on $n\geq1$ for all fibonacci trees $T_{2n+1}$ with $2n+1 = k\geq 3$.


**Base Case** $n=1$

For this, we consider $T_{3}$, the fibonacci tree with $2n+1 = k\equiv_{2}1$. As we can see, there is a leaf at depth $\frac{3-1}{2} = 1 = n$, namely the node with key $3$. Thus the base case holds.
$\square$
```mermaid
graph TD

0((0))
1((1))
2((2))
3(((3)))

2 --> 1 & 3
1 --> 0
```


**Induction Hypothesis** $n=m$

For some $m \geq 1$ we assume that $T_{2m+1}$ has a leaf at depth $\frac{\cancel{ 2 }m\cancel{ +1-1 }}{\cancel{ 2 }}= m$.


**Inductive Step** $n=m+1$

Now we consider the tree $T_{2m+3}$. Per definition, its right subtree is exactly $T_{2m+1}$, with some modification to the keys that don't concern us.

The induction hypothesis we assume to be true then guarantees that $T_{2m+1}$ has a leaf at depth $m$. Evaluating the statement to prove yields the result presented below.
$$
\begin{align} \\
\frac{k-1}{2} & = \frac{2m+3-1}{2}  = \frac{2m+2}{2}  \\
& = \frac{\cancel{ 2 }(m+1)}{\cancel{ 2 }} = m+1
\end{align}
$$

Intuitively, the statement is true because the right subtree of every fibonacci tree with $3 \leq k \equiv_{2} 1$ is exactly the previous odd subtree, which has a leaf at depth $m$. Since it's the subtree of the root, it has only one more predecessor, i.e. $m+1$. Hence, the proof is complete and the statement correct.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


# 6.3 ![[A&D-e-u06.pdf#page=2&rect=66,87,527,199|A&D-e-u06, p.2]]

## (a) ![[A&D-e-u06.pdf#page=3&rect=85,740,526,772|A&D-e-u06, p.3]]

Below is a top-down implementation of the sequence as a recursive function.

```
function f(n)
    if n <= 2 then return n end     // guard arm

    if n % 2 == 1 then
        return (f(n-1) + f(n-2)) / 2
    else
        return 2 / ((1 / f(n-2)) + (1 / f(n-1)))
    end
end
```


## (b) ![[A&D-e-u06.pdf#page=3&rect=85,720,527,741|A&D-e-u06, p.3]]

Let $T(n)$ denote the number of function calls to $f$ for computing $A_{n}$. Then the following holds.
$$
\begin{align}
T(1) = T(2) & = 1 \\
T(n) & = T(n-1) + T(n-2), & \forall n\geq3 \\
& = \mathrm{Fib}(n-1) + \mathrm{Fib}(n-2) \\
& = \mathrm{Fib}(n)  \\
& = \Theta(\phi^{n})
\end{align}
$$

Since $f = \Theta(g) \iff f \leq O(g) \land f \geq \Omega(g)$, we have shown that $T(n) \geq \Omega(C^{n})$ namely for $C=\phi>1$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


## (c) ![[A&D-e-u06.pdf#page=3&rect=84,687,527,718|A&D-e-u06, p.3]]

The improved implementation is given below.
```
function f(n)
    if n <= 2 then return n end     // guard arm

    f1 = 1
    f2 = 2
    f3          // variable declaration

    for i = 3 .. n do
        if i % 2 == 1 then
            f3 = (f1 + f2) / 2      // odd index
        else
            f3 = 2 / ((1 / f2) + (1 / f1))      // even index
        end
        (f1, f2) = (f2, f3)         // swap values up
    end
end
```

Its runtime is now linear, $T(n)=\Theta(n)$.
$\square$


## (d) ![[A&D-e-u06.pdf#page=3&rect=85,667,513,682|A&D-e-u06, p.3]]

1. The *dimensions* of the DP table are $1 \times n$
2. The *entry* $A[i]$ denotes the term $A_{i}$
3. The *recurrence relation* is given by $A[i]=\begin{cases} i,&\text{if }i\leq2\\ \frac{A[i-1]+A[i-2]}{2},&\text{if }2<i\equiv_{2}1 \\ \frac{2}{\frac{1}{A[i-2]}+\frac{1}{A[i-1]}},&\text{else}\end{cases}$
4. The *calculation order* is the canonical order of $i \in \mathbb{N}$
5. The *solution* can be extracted from $A[n]$ after the calculations
6. The *runtime* is linear, i.e. $\Theta(n)$

<div class="page-break" style="page-break-before: always;"></div>


# 6.4 ![[A&D-e-u06.pdf#page=3&rect=65,265,531,392|A&D-e-u06, p.3]]


## (a) ![[A&D-e-u06.pdf#page=3&rect=83,90,531,265|A&D-e-u06, p.3]]

The array $R[1..n]$ is given below.
$$
R[1..n ] = [3, 5, 3, 4, 2, -1, 4, 5, 2, 6]
$$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b) ![[A&D-e-u06.pdf#page=4&rect=83,592,529,771|A&D-e-u06, p.4]]

The array $R'[1..n]$ is given below.
$$
R'[1..n] = [0, 0, 1, 6, 4, 3, 7, 8, 5, 9]
$$

To compute the solution to the maximum almost subarray problem, we take the maximum of $R[1..n]$ and $R'[1..n]$, so the solution is given by $\max \{ R[1..n], R'[1..n] \}$.

```
R  =  [  0,  3,  5,  3,  4,  2, -1,  4,  5,  2,  6  ]
R' =  [  0,  0,  0,  1,  6,  4,  3,  7,  8,  5,  9  ]
T  =  [      3,  5,  3,  6,  4,  3,  7,  8,  7,  9  ]
```
$\square$


## (c) ![[A&D-e-u06.pdf#page=4&rect=84,420,529,590|A&D-e-u06, p.4]]

The array $S[1..n]$ is given as follows.
$$
S[1..n] = [5, 2, 0, 2, 1, 3, 6, 2, 1, 4]
$$

The solution array $T$ defined by the formula $T[k] = R[k-1] + S[k+1]$ for the index $1\leq k < n$ is given below. Then, to find the solution for the maximum almost subarray sum, we simply extract the maximum $\max_{k} \{ T[k] \}$.

```
R  =  [  0,  3,  5,  3,  4,  2, -1,  4,  5,  2,  6  ]
S  =  [      5,  2,  0,  2,  1,  3,  6,  2,  1,  4, 0  ]
T  =  [      2,  3,  7,  4,  7,  8,  1,  5,  9,  2  ]
```
$\square$
