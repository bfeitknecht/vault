# 1
## (a)
![[TI-e-u01.pdf#page=1&rect=97,354,529,385|TI-e-u01, p.1]]

Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters in the alphabet at least once.

Let $L_{n} \def \{ w \in \Sigma^* \mid \forall x\in \Sigma \ |w|_{x}\geq 1, |w|=n \}$ denote the language of words of length $n$ that contain each letter at least once. It is know that there exists  $|\Sigma|^n$ words of length $n$. Now we just subtract all words that do not contain each letter at least once.

$$
f(n) \def \begin{cases}
0, & n < 3 \\
3^{n} - 3 \cdot 2^n+3, & n \geq 3
\end{cases}
$$
$\qed$


## (b)
![[TI-e-u01.pdf#page=1&rect=97,314,529,346|TI-e-u01, p.1]]

Let $g:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma^n$ that do not contain $11$ as a subword.

übung
$$
g(n) \def \begin{cases}
3, & n=1 \\
8, & n=2 \\
2\cdot g(n-1) + 2\cdot g(n-1), & n\geq 3
\end{cases}
$$


___

# 2
Prove or disprove.
## (a)
![[TI-e-u01.pdf#page=1&rect=98,195,533,238|TI-e-u01, p.1]]


## (b)
![[TI-e-u01.pdf#page=1&rect=98,143,534,187|TI-e-u01, p.1]]


___

# 3
![[TI-e-u01.pdf#page=2&rect=68,744,529,776|TI-e-u01, p.]]

## (a)
$|L_{1}|=k,\ |L_{1}L_{2}|=k+1$
$$
\begin{align}
\Sigma &=\{ x \}  \\
L_{1} &= \{ x\} \\
L_{2} &= \{  x^{n} \mid n \in [k] \} \cup L_{\lambda} \\
\end{align}
$$


## (b)
$|L_{1}|=k,\ |L_{1}L_{2}|=k+5$
same as above

## (c)
$|L_{1}|=k,\ |L_{2}|=l,\ |L_{1}L_{2}|=k\cdot l$
disjunct

## (d)
$|L_{1}|=k,\ |L_{2}|=l,\ |\Sigma|=1,\ |L_{1}L_{2}|=k\cdot l$

unary (strichlistä), simply count to k for then mod k+1 up to l 
$$
\begin{align}
\Sigma &\def \{ \alpha \} \\
L_{1} &\def \{  \} \\
L_{2} &\def \{ \} \\
\end{align}
$$

