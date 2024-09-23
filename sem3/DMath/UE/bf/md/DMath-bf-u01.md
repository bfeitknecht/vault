
# 1.5
![[DMath-bf-u01-19AD9AF9698CB87E5EDA7F248D0BC34C.pdf#page=2&rect=76,348,414,453|DMath-e-u01, p.2]]

## a)
![[DMath-bf-u01-19AD9AF9698CB87E5EDA7F248D0BC34C.pdf#page=2&rect=107,271,414,340|DMath-e-u01, p.2]]

### i)
Let us first cover the $\heartsuit$ operator.
$$
\begin{array}{c | c || c | c}
A & B & {A \heartsuit B} & {B \, \heartsuit A} \\
\hline
0 & 0 & 1 & 1 \\
0 & 1 & 0 & 1 \\
1 & 0 & 1 & 0 \\
1 & 1 & 1 & 1\\
\end{array}
$$
Since the function tables for $A \heartsuit B$ and $B \, \heartsuit A$ are not the same, $A \heartsuit B \not\equiv B \, \heartsuit A$, i.e. the $\heartsuit$ operator **is not** commutative.
$\qed$

### ii)
Now, we cover the $\diamondsuit$ operator.
$$
\begin{array}{c | c || c | c}
A & B & {A \diamondsuit B} & {B \,\diamondsuit A} \\
\hline
0 & 0 & 1 & 1 \\
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0 \\
1 & 1 & 1 & 1\\
\end{array}
$$
Since the function tables for $A \diamondsuit B$ and $B \, \diamondsuit A$ are the same, $A\diamondsuit B \equiv B \,\diamondsuit A$, i.e. the $\diamondsuit$ operator **is** commutative.
$\qed$

___

## b)
![[DMath-e-u01.pdf#page=2&rect=106,194,517,272|DMath-e-u01, p.2]]

To make our life easier, we decompose the logical formulae into their components. First, let's simplify the left-hand-side formula.

$$
\begin{array}{c | c || c | c}
A & B & {A \,\heartsuit B} & {\lnot A \, \heartsuit B} \\
\hline
0 & 0 & 1 & 1 \\
0 & 1 & 0 & 1 \\
1 & 0 & 1 & 0 \\
1 & 1 & 1 & 1 \\
\end{array}
$$
