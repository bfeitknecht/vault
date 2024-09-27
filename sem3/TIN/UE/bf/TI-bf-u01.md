# 1
## (a)
![[TI-e-u01.pdf#page=1&rect=97,354,529,385|TI-e-u01, p.1]]


Let $L \def \{ w \in \Sigma^n \mid \forall x\in \Sigma \ |w|_{x}\geq 1 \}$ denote the language of words of length $n$ that contain each letter at least once.

To solve this, we use the principle of inclusion-exclusion. It is known, that there are $|\Sigma|^n$ words of length $n$ over the alphabet $\Sigma$, in our case $3^n$.

Now we need to subtract all words that are missing one letter, i.e. $w\in\Gamma^n$, where $\Gamma=\Sigma-\{s\}$ for some $s\in \Sigma$. Since these words consist of only two letters, there are $2^n$ of them in the three different possible languages. Let $\Gamma_{a, b}^n, \Gamma_{a,c}^n, \Gamma_{b,c}^n$ be the languages of words of words of length $n$ consisting only of the denoted letters. Therefore, w.o.l.g. $|\Gamma_{x, y}^n|=2^n$, and since there are three such sets, we need to subtract $3\cdot 2^n$ from our total.

Finally, let's add back the words that were subtracted multiple times, i.e. words missing two symbols. There are only $3$ such words, namely $a^n, b^n, c^n$. Thus we arrive at the final number of $|L|=3^n-3\cdot2^n+3$.

Let $f:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma$ that contain each of the three letters in the alphabet at least once.
$$
f(n) \def \begin{cases}
0, & n < 3 \\
3^{n} - 3 \cdot 2^n+3, & n \geq 3
\end{cases}
$$
$\qed$


## (b)
![[TI-e-u01.pdf#page=1&rect=97,314,529,346|TI-e-u01, p.1]]

Let $g:\N \to \N$ denote the number of words of length $n\in \N$ over $\Sigma^n$ that do not contain $11$ as a subword. The function follows the fibonacci sequence. Thus,

$$
g(n) \def \begin{cases}
1, & n=0 \\
2, & n=1 \\
g(n-1) + g(n-2), & n\geq 2
\end{cases}
$$
$\qed$

___

# 2
Prove or disprove.
## (a)
![[TI-e-u01.pdf#page=1&rect=98,195,533,238|TI-e-u01, p.1]]

We pove this by case distinction.
### Case $L = \emptyset$
Let $L = \emptyset$, then $L^2 = \emptyset$ and clearly $\emptyset \subseteq \emptyset$. Thus $L^2 \subseteq L$.

### Case $L=\{\lambda\}$
Let $L = \{\lambda\}$, then $L^2 = \{\lambda\lambda\} = \{\lambda\}$. Since $L = L^2 \implies L^2 \subseteq L$

### Case $|L|=\infty$

We prove this case by contradiction. Assume for the sake of contradiction, that the order of our language is finite, i.e. $|L|\neq\infty$. Let $w \in L$ be an arbitrary word, s.t. $w\neq\lambda$.

Now, since we assume the statement to be true for some finite order language, there must be some word $v\in L^2$ s.t. $v=w^2$. However, since we assume $L^2 \subseteq L$, there must also be some word $u\in L^2$ s.t. $u=v^2$.

We have arrived at a contradiction, since $L$ cannot be finite but fulfill the implication. Thus $|L|=\infty$ in order for $L^2\subseteq L$.
$\qed$

## (b)
![[TI-e-u01.pdf#page=1&rect=98,143,534,187|TI-e-u01, p.1]]

Let $A=L_{2}\cdot(L_{2}-L_{1})$ and $B = (L_{2})^2-L_{2} \cdot L_{1}$. To show that the equality holds, we need to prove that $A\subseteq B$ and $B\subseteq A$.

Let's start with $A\subseteq B$. Let $z \in A$ be arbitrarily chosen. Applying the definition of the concatination of languages gives us $z=xy$, where $x\in L_{2}$ and $y\in L_{2}-L_{1}$, i.e. $y\not\in L_1$.
To prove $A\subseteq B$ we need to show that $z\in B$, i.e. $z\in (L_{2})^2$ but $z\not\in L_{2}\cdot L_{1}$. Let $v, w\in L_{2}$, $w\not\in L_{1}$ be arbitrary, which implies $z=vw$, but $vw\not\in L_{2} \cdot L_{1}$ by definition. Thus $A\subseteq B$ is proven.


Let's now show $B\subseteq A$. Let $z\in B$ be arbitrarily chosen, i.e. $z=xy$, where $x,y\in (L_{2})^2$ 

$(L_2)^2 - L_2 * L_1 \subseteq L_2 * (L_2 - L_1)$
Let $z \in (L_2)^2 - L_2 * L_1$.
$z = xy\qquad where\qquad x,y \in L_2\;  and\; z \notin L_{2} * L_1$
$z \notin L_{2} * L_1 \implies y \notin L_1$ because for $z$ to be in $L_2*L_1$ $y$ (the second element) needs to be in $L_1$.
Now with $x \in L_2$ and $y \in L_2 - L_{1}$
Now concatinating $x$ and $y$ we get the set $L_2 * (L_2 - L_1)$.
And because $z = xy$ we can say that $z \subseteq L_2 * (L_2 - L_1)$.

Since both inclusions are now proven because of definition we can say $L_{2} * (L_{2} - L_{1}) = (L_{2})^2 - L_{2} * L_{1}$.




___

# 3
![[TI-e-u01.pdf#page=2&rect=68,744,529,776|TI-e-u01, p.]]

## (a)
$|L_{1}|=k,\ |L_{1}L_{2}|=k+1$

$$
\begin{align}
\Sigma &=\{ a \}  \\
L_{1} &= \{ a\} \cup L_{\lambda} \\
L_{2} &= \{  a^{n} \mid n \in [k] \} \\
\end{align}
$$
$\qed$


## (b)
$|L_{1}|=k,\ |L_{1}L_{2}|=k+5$

$$
\begin{align}
\Sigma &=\{ a \}  \\
L_{1} &= \{ a^i \mid i \in [5] \} \cup L_{\lambda} \\
L_{2} &= \{  a^{n} \mid n \in [k] \} \\
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

$$
\begin{align}
\Sigma &= \{ a\} \\
L_1 &= \bigcup_{i=1}^{k} a^{l \cdot i} \\
L_2 &= \bigcup_{i=1}^{l} a^i \\
\end{align}
$$
$\qed$





