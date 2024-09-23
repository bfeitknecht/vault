
An **operation** $\diamond$ in [[propositional logic]] is a [[arity|k-ary]] [[function]], $\diamond :\{0,1\}^k\to\{0,1\}$.
They can be described by function tables for their respective truth assignments.


# Examples
![[dmath-script-hs24.pdf#page=28&rect=36,269,388,361|dmath-script-hs24, p.18]]
$$
\begin{align}
&\text{Negation (logical not)}
&\begin{array}{c || c}
A & \neg A \\
\hline
1 & 0\\
0 & 1 \\
\end{array} \\
\\
&\text{Conjunction (logical and)}
&\begin{array}{c | c || c}
A & B & {A \land B} \\
\hline
0 & 0 & 0 \\
0 & 1 & 0 \\
1 & 0 & 0 \\
1 & 1 & 1 \\
\end{array} \\
\\
&\text{Disjunction (logical or)}
&\begin{array}{c | c || c}
A & B & {A \lor B} \\
\hline
0 & 0 & 0 \\
0 & 1 & 1 \\
1 & 0 & 1 \\
1 & 1 & 1 \\
\end{array} \\
\\
&\text{Implication}
&\begin{array}{c | c || c}
A & B & {A \to B} \\
\hline
0 & 0 & 1 \\
0 & 1 & 1 \\
1 & 0 & 0 \\
1 & 1 & 1 \\
\end{array} \\
\end{align}
$$
Notice, that $A\to B \equiv \neg A \lor B$.

Furthermore, we can combine $A\to B \land B \to A \equiv A\leftrightarrow B$

