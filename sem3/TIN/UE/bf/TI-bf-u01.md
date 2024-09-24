# 1
![[TI-e-u01.pdf#page=1&rect=73,311,531,386|TI-e-u01, p.1]]


case n=3
abc
acb
bac
bca
cba
cab



## (a)
Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters at least once.

We need to find words $w\in \Sigma^n$ such that $\forall x \in \Sigma : |w|_x \geq 1$. It is known that for some $n$, there exist $|\Sigma|^n$ words of length $n$. Next, we just need to subtract all words that do not contain each letter at least once.

$$
f(n) \def \begin{cases}
0, & n < 3 \\
3^n - 3 \cdot 2^{n-1} - 3 \cdot 1^{n-2}, & n \geq 3
\end{cases}
$$

