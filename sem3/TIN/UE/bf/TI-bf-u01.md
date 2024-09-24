# 1

## (a)
![[TI-e-u01.pdf#page=1&rect=97,354,529,385|TI-e-u01, p.1]]

Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters in the alphabet at least once.

Let $L_{n} \def \{ w \in \Sigma^* \ | \ \forall x\in \Sigma \ |w|_{x}\geq 1, |w|=n \}$ denote the language of words of length $n$ that contain each letter at least once. It is know that there exists  $|\Sigma|^n$ words of length $n$. Now we just subtract all words that do not contain each letter at least once.

$$
f(n) \def \begin{cases}
0, & n < 3 \\
3^{n} - 3 \cdot 2^n+3, & n \geq 3
\end{cases}
$$



## (b)
![[TI-e-u01.pdf#page=1&rect=97,314,529,346|TI-e-u01, p.1]]




# 2

## (a)
![[TI-e-u01.pdf#page=1&rect=98,195,374,238|TI-e-u01, p.1]]
