# 1
## (a)
![[TI-e-u01.pdf#page=1&rect=97,354,529,385|TI-e-u01, p.1]]

Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters in the alphabet at least once.

Let $L_{n} \def \{ w \in \Sigma^* \mid \forall x\in \Sigma \ |w|_{x}\geq 1, |w|=n \}$ denote the language of words of length $n$ that contain each letter at least once. It is know that there exists  $|\Sigma|^n$ words of length $n$. 

Now we just subtract all words that do not contain each letter at least once using the sieve formula over $m$ sets, since we want to account for duplicates.
$$
\begin{align}
&\boxed{
\Bigg|\bigcup_{i\in[m]} L_{i}\Bigg| =\sum_{J\subseteq [m]}(-1)^{|J|+1} \bigg|\bigcap_{j\in J} L_{j}\bigg|, \quad m \geq2
} &\text{(1)}
\end{align}
$$

We define $L_{s\in\Sigma}$ as the language of words of length $n$ containing **at least** one symbol $s_\in \Sigma$ from the alphabet $\Sigma$. So $L_a$ corresponds to all words of length $n$ that contain at least one $a$, $L_b$ to the language containing words of length $n$ with at least one $b$, etc. The sieve formula for $m=3=|\Sigma|$  in our case is as follows.

$$
\begin{align}
|L_{a}\cup L_{b}\cup L_{c}| &= |L_{a}| + |L_{b}| + |L_{c}| - |L_{a}\cap L_{b}| - |L_{a}\cap L_{c}| -|L_{b}\cap L_{c}| +|L_{a}\cap L_{b}\cap L_{c}|, &\text{(2)}
\end{align}
$$

Solving for $|L_{a}\cap L_{b}\cap L_{c}|$ in $(2)$ finally yields the formula we will use.

$$
\begin{align}
|L_{a}\cap L_{b}\cap L_{c}| &= \overbrace{ |L_{a}\cup L_{b}\cup L_{c}| }^{ \text{(4)} } \underbrace{ - |L_{a}| - |L_{b}| - |L_{c}| }_{ \text{(5)} } + \overbrace{ |L_{a}\cap L_{b}| + |L_{a}\cap L_{c}| +|L_{b}\cap L_{c}| }^{ \text{(6)} } &\text{(3)}
\end{align}
$$

Where, in $\text{(4)}$ we use the fact that $|L_{1}\cup L_{2}\cup L_{3}|=|\Sigma^n|$, since the union of all languages that contain at least one given symbol is equal to the language of all words of length $n$.


Lastly, we can show that for some distinct  $x, y, z \in \Sigma$, $L_{x}=\Sigma^n\setminus $

La := ("all n long words with at least one a)







$$
f(n) \def \begin{cases}
0, & n < 3 \\
3^{n} - 3 \cdot 2^n+3, & n \geq 3
\end{cases}
$$
$\qed$


## (b)
![[TI-e-u01.pdf#page=1&rect=97,314,529,346|TI-e-u01, p.1]]

Let $g:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma^n$ that do not contain $11$ as a subword. Since for the case of $n=1$

$$
g(n) \def \begin{cases}
2, & n=1 \\
3, & n=2 \\
g(n-1) + g(n-2), & n\geq 3
\end{cases}
$$
$\qed$

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
\Sigma &=\{ a \}  \\
L_{1} &= \{ a\} \\
L_{2} &= \{  a^{n} \mid n \in [k] \} \cup L_{\lambda} \\
\end{align}
$$
$\qed$


## (b)
$|L_{1}|=k,\ |L_{1}L_{2}|=k+5$

$$
\begin{align}
\Sigma &=\{ a \}  \\
L_{1} &= \{ a^i \mid i \in [5] \} \\
L_{2} &= \{  a^{n} \mid n \in [k] \} \cup L_{\lambda} \\
\end{align}
$$
$\qed$


## (c)
$|L_{1}|=k,\ |L_{2}|=l,\ |L_{1}L_{2}|=k\cdot l$
$$
\begin{align}
\Sigma &=\{ a, b\}  \\
L_{1} &= \{ a^{i} \mid i \in [k] \} &\text{(1)} \\
L_{2} &= \{  b^{j} \mid j \in [l] \} &\text{(2)} \\
 \\
\text{(1), (2)} &\implies |L_{1}| = k, \ |L_{2}| = l  &\text{(3)}\\
L_{1} \cap L_{2} = \empty \text{, (3)} &\implies |L_{1}L_{2}| = k\cdot l 
\end{align}
$$
$\qed$


## (d)
$|L_{1}|=k,\ |L_{2}|=l,\ |\Sigma|=1,\ |L_{1}L_{2}|=k\cdot l$

unary (strichlistä), simply count to k then mod k+1 up to l 

$$
\begin{align}
\Sigma &= \{ a\} \\
L_{1} &= \{ a^i \mid i \in [k] \} \\
L_{2} &= \{ \} \\
\end{align}
$$





