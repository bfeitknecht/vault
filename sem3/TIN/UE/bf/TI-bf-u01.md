# 1
![[TI-e-u01.pdf#page=1&rect=73,311,531,386|TI-e-u01, p.1]]


case n=3
abc
acb
bac
bca
cba
cab

next(abc) {
%%
Xabc, aXbc, abXc, abcX 
%%
	aabc
	~~aabc~~
	abac
	abca
	babc
	abbc
	~~abbc~~
	abcb
	cabc
	acbc
	abcc
	~~abcc~~
}


## (a)
Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters at least once.

We need to find words $w\in \Sigma^n$ of length $n$, i.e. $|w|=n$ such that $\forall x \in \Sigma : |w|_x \geq 1$. It is known that for some $n$, there exist $|\Sigma|^n$ words of length $n$. 


Next, we just subtract all words that do not contain each letter at least once.

$3^{n-2}\cdot2$
$$
f(n) \def \begin{cases}
0, & n < 3 \\
n!, & n \geq 3
\end{cases}
$$

