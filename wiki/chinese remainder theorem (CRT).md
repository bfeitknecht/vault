
The **chinese remainder theorem (CRT)** states that for a list of $k \in \mathbb{N}$ pairwise [[coprime]] congruences there exists a unique $x$ satisfying them all.

$$
\begin{align}
&\begin{rcases}
x \equiv_{m_{1}} a_{1} \\
x \equiv_{m_{2}} a_{2} \\
\quad\vdots \\
x \equiv_{m_{k}} a_{k}
\end{rcases} \implies
\begin{rcases}
M = \prod_{i \in [k]} m_{k} \\
M_{i} = \frac{M}{m_{i}} \\
N_{i} \equiv_{m_{i}} M_{i}^{-1}
\end{rcases}
\implies X = \sum_{i \in [k]} a_{i} M_{i} N_{i} \\
\\ 
\implies &x = R_{M}( X)
\end{align}
$$

