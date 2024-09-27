

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






