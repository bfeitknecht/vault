![[AuW-u04-pg-e.pdf#page=1&rect=86,405,522,557|AuW-u04-pg-e, p.1]]
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



To construct a Las Vegas algorithm (L) with a success rate of 1/2, we can repeatedly apply Algorithm A and then use Algorithm V to verify the result. We will keep iterating until we find a result that passes the verification with certainty.

Here's a sketch of the algorithm:

1. Use Algorithm $A$ to generate a candidate prime number X in the range $(N, 2N)$.
2. Use Algorithm $V$ to verify if X is prime. If it is, return X.
3. If Algorithm $V$ indicates that X is not prime, repeat steps 1 and 2.

The success rate of this algorithm is at least 1/2 because if we randomly choose X using Algorithm A, the probability of it being a prime number is at least $\frac{1}{\log(N)}$, as stated in the problem. Therefore, on average, we expect to find a prime number in two attempts.

Now, let's analyze the runtime of this Las Vegas algorithm:

- Each iteration of Algorithm A has a runtime of $O(log N)$.
- Each iteration of Algorithm V has a runtime of $O((log N)^{6.1})$.

Since we want a Las Vegas algorithm with a success rate of 1/2, on average, we expect to repeat the loop twice before finding a prime number.

So, the overall runtime of the Las Vegas algorithm would be:

\[O(2 \times (\text{Runtime of A}) + 2 \times (\text{Runtime of V}))\]

\[= O(2 \times \log N + 2 \times (\log N)^{6.1})\]

\[= O(\log N + (\log N)^{6.1})\]

Therefore, the runtime of Algorithm L is \(O(\log N + (\log N)^{6.1})\).