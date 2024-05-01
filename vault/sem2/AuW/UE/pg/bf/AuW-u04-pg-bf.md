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



intuition:

run A (monte carlo) many times and check with verifier until we have Pr\["Correct answer] = 1/2




