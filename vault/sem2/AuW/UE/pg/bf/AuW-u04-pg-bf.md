![[AuW-pg04-e.pdf#page=1&rect=86,405,522,557|AuW-u04-pg-e, p.1]]
$$
\begin{align}
&\mathbf{Algorithm\ A} \\
&\text{Input: } N\in \mathbb N \\
&\text{Output: } X\in(N, 2N) \\
&\text{Runtime: $\mathcal O(\log N)$} \\
&\text{Probability: } p_{N} \geq \frac{1}{\log N} 
\end{align}
$$

$$
\begin{align}
&\mathbf{Algorithm\ V} \\
&\text{Input: } x\in \mathbb N \\
&\text{Output: } \text{true / false} \\
&\text{Runtime: $\mathcal O((\log n)^{6.1})$} \\
\end{align}
$$

$$
\begin{align}
&\mathbf{Algorithm\ L} \\
&\text{Input: } N\in \mathbb N \\
&\text{Output: } X\in(N, 2N) \\
&\text{Runtime: $\mathcal O(?)$} \\
&\text{Probability: } p_{N} \geq \frac{1}{2} 
\end{align}
$$

>[!quote] intuition:
run A (monte carlo) many times and check with verifier until we have Pr\["correct answer"] = 1/2



To construct a Las Vegas algorithm ($L$) with a success rate of $\frac{1}{2}$, we can repeatedly apply Algorithm $A$ and then use Algorithm $V$ to verify the result. We will keep iterating until we find a result that passes the verification with certainty.

Here's a sketch of the algorithm:

1. Use Algorithm $A$ to generate a candidate prime number $X$ in the range $(N, 2N)$.
2. Use Algorithm $V$ to verify if $X$ is prime. If it is, return $X$.
3. If Algorithm $V$ indicates that $X$ is not prime, repeat steps 1 and 2.


Let's denote the runtime of Algorithm $A$ as \( $T_A$ \) and the runtime of Algorithm V $as$ \( $T_V$ \). We will denote the number of times we need to repeat Algorithm A until we find a prime candidate as \( $k$ \).

Since the success rate of Algorithm $A$ is \( $p_N \geq \frac{1}{\log N}$ \), the expected number of iterations \( $k$ \) until we find a prime candidate is at most \( $2 \log N$\).

Therefore, the runtime of Algorithm $L$ will be:

$$
\begin{align}
\text{Runtime of L} &= k \times T_A + T_V \\
&= 2 \log N \times T_A + T_V \\
&= 2 \log N \times O(\log N) + O((\log N)^{6.1}) \\
& = O((\log N)^2) + O((\log N)^{6.1}) \\
&= O((\log N)^{6.1})
\end{align}
$$
So, the runtime of Algorithm $L$ is \($O((\log N)^{6.1}$) \), which is dominated by the runtime of Algorithm $V$.