
Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099

# 6.1
![[A&D-e-u06.pdf#page=1&rect=68,300,533,497|A&D-e-u06, p.1]]

## (e)
![[A&D-e-u06.pdf#page=1&rect=84,95,534,148|A&D-e-u06, p.1]]

To begin we'll formulate the statement to prove as an invariant. Let's define the invariant that denotes for any non-leaf node in the tree $T_{k}$, the absolute difference between its left and right subtrees' heights is exactly equal to one as follows.
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

We now show that $I(h+1)$ holds. The induction hypothesis that we assume to be true, guarantees that the root's left and right subtrees fulfill the invariants $I(k)$ and $I(k-1)$ respectively, per definition of fibonacci trees. 




## (f)
![[A&D-e-u06.pdf#page=2&rect=84,722,527,772|A&D-e-u06, p.2]]


probably something with the last tree..



# 6.3
![[A&D-e-u06.pdf#page=2&rect=66,87,527,199|A&D-e-u06, p.2]]

## (a)
![[A&D-e-u06.pdf#page=3&rect=85,740,526,772|A&D-e-u06, p.3]]

```
function A(n)
    if n <= 2 then return n
    else
        if n % 2 == 1 then
            return (A(n-1) + A(n-2)) / 2
        else
            return 2 / ((1/A(n-2)) + (1/A(n-3)))
        end
    end
end
```


## (b)
![[A&D-e-u06.pdf#page=3&rect=85,720,527,741|A&D-e-u06, p.3]]


probably $2^{n}$


## (c)
![[A&D-e-u06.pdf#page=3&rect=84,687,527,718|A&D-e-u06, p.3]]


## (d)
![[A&D-e-u06.pdf#page=3&rect=84,490,528,682|A&D-e-u06, p.3]]





# 6.4
![[A&D-e-u06.pdf#page=3&rect=65,265,531,392|A&D-e-u06, p.3]]


## (a)
![[A&D-e-u06.pdf#page=3&rect=83,90,531,265|A&D-e-u06, p.3]]




## (b)
![[A&D-e-u06.pdf#page=4&rect=83,575,529,771|A&D-e-u06, p.4]]



## (c)
![[A&D-e-u06.pdf#page=4&rect=84,405,529,570|A&D-e-u06, p.4]]


