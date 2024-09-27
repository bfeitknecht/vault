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






