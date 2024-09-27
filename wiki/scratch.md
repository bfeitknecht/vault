%% 
Proof by contradiction

assumption

Assume for the sake of contradiciton, there exists a language $L\neq\empty, L\neq L_{\lambda}, |L|\neq \infty$ s.t. $L^2\subseteq L$. 

apply definition of language concat

case distinction
case L=ø

case L = $\lambda$

case |L|=infinite

uv in L -> wuv -/> in L
w.o.l.g.

therefore, our assumption must be wrong and the statement is proven.



We pove this by case distinction.

### Case $L = \emptyset$
Let $L = \emptyset$, then $L^2 = \emptyset$ and clearly $\emptyset \subseteq \emptyset$. Thus $L^2 \subseteq L$.

### Case $L=\{\lambda\}$
Let $L = \{\lambda\}$, then $L^2 = \{\lambda\lambda\} = \{\lambda\}$. Since $L = L^2 \implies L^2 \subseteq L$
This trivially proves the second part of the implication. 

### Case $|L|=\infty$

To prove this case we show that $L$ cannot be finite yet still fulfill $L^2 \subseteq L$.
Assuming $L$ contains as least one non-empty word $w \in L$ then $L^2$ has to contain the cconcatenation of that word with itself, i.e. $ww \in L^2$.

To fulfill $L^2 \subseteq L$, there has to be some  $v=ww \in L$. This now makes it so that $vv \in L^2$ also has to be in $L^2$ creating an infinite loop and thus infinite number of unique words.
This is only possible if $L$ is infinite and proves the third part of the implication. %%




Try 2

To show that two Languages are equal we need to show that $L_1 \subseteq L_2$ and $L_2 \subseteq L_1$.

Lets start with:
$L_2 * (L_2 - L_1) \subseteq (L_2)^2 - L_2 * L_1$

Let $z \in L_2 * (L_2 - L_1)$.
Because of the definition of concatination we can say:
$z = xy\qquad where\qquad x \in L_2\; and \; y \in L_2 - L_1$
$\implies x \in L_2$ and $y \in L_{2}$ but $y \notin L_1$

Now lets check if this is a subset or equal the right set.
Lets split the right side into $(L_2)^2$ and $L_2 * L_1$.
We need to check that $z \in (L_2)^2$ and $z \notin L_2 * L_1$.
$x,y \in L_2 \implies z \in (L_{2})^2$
$x \in L_2$ and $y \notin L_1$ $\implies z \notin L_2 * L_1$

Now lets show:
$(L_2)^2 - L_2 * L_1 \subseteq L_2 * (L_2 - L_1)$
Let $z \in (L_2)^2 - L_2 * L_1$.
$z = xy\qquad where\qquad x,y \in L_2\;  and\; z \notin L_{2} * L_1$
$z \notin L_{2} * L_1 \implies y \notin L_1$ because for $z$ to be in $L_2*L_1$ $y$ (the second element) needs to be in $L_1$.
Now with $x \in L_2$ and $y \in L_2 - L_{1}$
Now concatinating $x$ and $y$ we get the set $L_2 * (L_2 - L_1)$.
And because $z = xy$ we can say that $z \subseteq L_2 * (L_2 - L_1)$.

Since both inclusions are now proven because of definition we can say $L_{2} * (L_{2} - L_{1}) = (L_{2})^2 - L_{2} * L_{1}$.







It is know that there exists  $|\Sigma|^n$ words of length $n$. We just subtract all words that do not contain each letter at least once using the sieve formula over $m$ sets, since we want to account for duplicates.
$$
\begin{align}
&\boxed{
\Bigg|\bigcup_{i\in[m]} L_{i}\Bigg| =\sum_{J\subseteq [m]}(-1)^{|J|+1} \bigg|\bigcap_{j\in J} L_{j}\bigg|, \quad m \geq2
} &\text{(1)}
\end{align}
$$

We define $L_{s\in\Sigma}$ as the language of words of length $n$ containing **at least** one symbol $s_\in \Sigma$ from the alphabet $\Sigma$. For convenience and readability, we will use the notation $L_{a, b, c} = L_{a}\cap L_{b}\cap L_{c}$, as well as $L_{x, y} =L_{x}\cap L_{y}$, for some $x,y \in \Sigma, x\neq y$. 

The sieve formula for $m=3=|\Sigma|$  in our case is as follows.
$$
\begin{align}
|L_{a}\cup L_{b}\cup L_{c}| &= |L_{a}| + |L_{b}| + |L_{c}| - |L_{a}\cap L_{b}| - |L_{a}\cap L_{c}| -|L_{b}\cap L_{c}| +|L_{a}\cap L_{b}\cap L_{c}| &\text{(2)} \\
\end{align}
$$


Solving for $|L_{a,b,c}| = |L_{a}\cap L_{b}\cap L_{c}|$ in $(2)$ finally yields the formula we need.
$$
\begin{align}
|L_{a}\cap L_{b}\cap L_{c}| &= |L_{a}\cup L_{b}\cup L_{c}| - |L_{a}| - |L_{b}| - |L_{c}| + |L_{a}\cap L_{b}| + |L_{a}\cap L_{c}| +|L_{b}\cap L_{c}| &\text{(3)}
\end{align}
$$

We also need the formula for $|L_{x,y}|=|L_{x}\cap L_{y}|$.
$$
\begin{align}
|L_{x} \cap L_{y}| &= |L_{x}|+|L_{y}|-|L_{x} \cup L_{y}| &\text{(4)}
\end{align}
$$

Now we substitute what we have in $\text{(3)}$.


$$
\begin{align}
|L_{a}\cap L_{b}\cap L_{c}| &= \overbrace{ |L_{a}\cup L_{b}\cup L_{c}| }^{ \text{(5)} } \underbrace{ - |L_{a}| - |L_{b}| - |L_{c}| }_{ \text{(6)} } \overbrace{ + |L_{a}\cap L_{b}| + |L_{a}\cap L_{c}| +|L_{b}\cap L_{c}| }^{ \text{(7)} } \\
%%\text{(5)} &= 3^n \\
%%\text{(6)} &= -3\cdot(3^n-2^n) \\
\text{(6), (7)} &= |L_{a}|+|L_{b}|-|L_{a} \cup L_{b}| \cancel{ + |L_{a}| }+|L_{c}|-|L_{a} \cup L_{c}| \cancel{ +|L_{b}| } \cancel{ +|L_{c}| } -|L_{b} \cup L_{c}| \\
&= |L_{a}| + |L_{b}| + |L_{c}| - |L_{a} \cup L_{b}| - |L_{a} \cup L_{c}| - |L_{b} \cup L_{c}|
\end{align}
$$



Where, in $\text{(5)}$ we use the fact that $|L_{a}\cup L_{b}\cup L_{c}|=|\Sigma^n| =3^n$, since the union of all languages that contain at least one given symbol is equal to the language of all words of length $n$.


Lastly, we can show that for some distinct $x, y, z \in \Sigma$ it holds that $L_{x}=\Sigma^n \setminus \Gamma^n$, where, w.l.o.g., $\Gamma = \Sigma\setminus\{x\}$. In words, the language $L_{x}$ is equal to the language of all $n$ long words minus all $n$ long words from only $y$ and $z$. With this we can construct




%%%%%%%%%%%%


La := ("all n long words with at least one a)


$$
\begin{align}
|L_{x} \cap L_{y}| = |L_{x}|+|L_{y}|-|L_{x} \cup L_{y}|
\end{align}
$$


%%%%%%%%%%%%%%%%










# 1
## (a)
![[TheInf-Exe-01.pdf#page=1&rect=97,344,530,376|TheInf-Exe-01, p.1]]

Let $f:\mathbb N \to \mathbb N$ denote the number of words of length $n\in \mathbb N$ over $\Sigma$ that contain each of the three letters in the alphabet at least once.
Let $L_{n} = \{ w \in \Sigma^* \mid \forall x\in \Sigma \ |w|_{x}\geq 1, |w|=n \}$ denote the language of words of length $n$ that contain each letter at least once. It is know that there exists  $|\Sigma|^n$ words of length $n$. 

Now we just subtract all words that do not contain each letter at least once using the sieve formula.

$$
f(n) = \begin{cases}
0, & n < 3 \\
3^{n} - 3 \cdot 2^n+3, & n \geq 3
\end{cases}
$$
$\square$

## (b)
![[TheInf-Exe-01.pdf#page=1&rect=97,310,531,339|TheInf-Exe-01, p.1]]

Let $g:\mathbb N \to \mathbb N$ denote the number of words of length $n\in \mathbb N$ over $\Sigma^n$ that do not contain $11$ as a subword. Since for the case of $n=1$

$$
g(n) = \begin{cases}
1, & n=0 \\
2, & n=1 \\
g(n-1) + g(n-2), & n\geq 2
\end{cases}
$$
$\square$

___
# 2
Prove or disprove.
## (a)
![[TheInf-Exe-01.pdf#page=1&rect=98,194,531,233|TheInf-Exe-01, p.1]]

We pove this by a simple Case Distingtion.
### Case 1: $L = \emptyset$
If $L = \emptyset$, then $L^2 = \emptyset$ and clearly $\emptyset \subseteq \emptyset$. This trivially proves the first part of the implication.
### Case 2: $L=\{\lambda\}$
If $L = \{\lambda\}$, then $L^2 = \{\lambda\lambda\} = \{\lambda\}$. Since $L = L^2 \implies L^2 \subseteq L$
This trivially proves the second part of the implication. 

### Case 3: 
To prove Case 3 we prove that $L$ cannot be finite to fulfill $L^2 \subseteq L$.
Assuming $L$ contains as least one non-empty word $w \in L$ then $L^2$ has to contain the cconcatenation of $w$ $ww \in L^2$.
To fulfill $L^2 \subseteq L$, we have to add $ww \in L$. This forces $wwww \in L^2$ creating an infinite loop and thus infinite number of unique words.
This is only possible if $L$ is infinite and proofes the third part of the implication.

## (b)
![[TheInf-Exe-01.pdf#page=1&rect=98,138,531,184|TheInf-Exe-01, p.1]]


___

# 3
![[TheInf-Exe-01.pdf#page=2&rect=69,746,528,778|TheInf-Exe-01, p.]]
## (a)
![[TheInf-Exe-01.pdf#page=2&rect=97,718,531,738|TheInf-Exe-01, p.]]

$|L_{1}|=k,\ |L_{1}L_{2}|=k+1$

$$
\begin{align}
\Sigma &=\{ a \}  \\
L_{1} &= \{  a^{n} \mid n \in\mathbb{N} \land 1 \leq n \leq k \} \\
L_{2} &= \{ a, \lambda\} \\
\end{align}
$$
$\square$

## (b)
![[TheInf-Exe-01.pdf#page=2&rect=98,693,531,712|TheInf-Exe-01, p.]]

$|L_{1}|=k,\ |L_{1}L_{2}|=k+5$

$$
\begin{align}
\Sigma &=\{a\}  \\
L_{1}  &=\{a^{n} \mid n \in\mathbb{N} \land 1 \leq n \leq k \} \\
L_{2}  &=\{a^{i} \mid i \in\mathbb{N} \land 0 \leq 5\} \\
\end{align}
$$
$\square$

## (c)
![[TheInf-Exe-01.pdf#page=2&rect=99,669,530,687|TheInf-Exe-01, p.]]

$|L_{1}|=k,\ |L_{2}|=l,\ |L_{1}L_{2}|=k\cdot l$
$$
\begin{align}
\Sigma &=\{a\ b\}  \\
L_{1}  &=\{a^{n} \mid n \in\mathbb{N} \land 1 \leq n \leq k \} \\
L_{2}  &=\{b^{n} \mid n \in\mathbb{N} \land 1 \leq n \leq l \} \\ 
\end{align}
$$
$\square$

## (d)
![[TheInf-Exe-01.pdf#page=2&rect=99,643,530,663|TheInf-Exe-01, p.]]

$|L_{1}|=k,\ |L_{2}|=l,\ |\Sigma|=1,\ |L_{1}L_{2}|=k\cdot l$

