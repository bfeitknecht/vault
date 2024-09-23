
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

Let's define the left-hand-side formula as $F\equiv (\neg A \heartsuit B) \diamondsuit (B \,\heartsuit C)$ and the right-hand-side formula as $G \equiv \neg(A\diamondsuit B) \heartsuit \neg(A\diamondsuit C)$.

To make our life easier, we decompose the logical formulae into their components. First, let's cover $F$.
$$
\begin{array}{c | c || c | c | c}
A & B & {A \,\heartsuit B} & {B \, \heartsuit A} & {\lnot A \, \heartsuit B} \\
\hline
0 & 0 & 1 & 1 & 1 \\
0 & 1 & 0 & 1 & 1 \\
1 & 0 & 1 & 0 & 1 \\
1 & 1 & 1 & 1 & 0 \\
\end{array}
$$
 
 Then, we will go over $F$ as a whole.
$$
\begin{array}{c | c | c || c | c }
A & B & C & {\neg A \, \heartsuit B} & {B \,\heartsuit C} & {(\neg A \heartsuit B) \,\diamondsuit \,(B \,\heartsuit C)} \\
\hline
0 & 0 & 0 & 1 & 1 & 1 \\
0 & 0 & 1 & 1 & 0 & 0 \\
0 & 1 & 0 & 1 & 1 & 1 \\
0 & 1 & 1 & 1 & 1 & 1 \\
1 & 0 & 0 & 1 & 1 & 1 \\
1 & 0 & 1 & 1 & 0 & 0\\
1 & 1 & 0 & 0 & 1 & 0 \\
1 & 1 & 1 & 0 & 1 & 0 \\
\end{array}
$$


Now that we have that, we need to look at $G$.
$$
\begin{array}{c | c || c | c | c}
A & B & {A \diamondsuit B} & {B \, \diamondsuit A} & { \neg(A \diamondsuit B)} \\
\hline
0 & 0 & 1 & 1 & 0 \\
0 & 1 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 & 1 \\
1 & 1 & 1 & 1 & 0 \\
\end{array}
$$

Then, we'll go over it as a whole.
$$
\begin{array}{c | c | c || c | c }
A & B & C & {\neg  (A \diamondsuit B)} & {\neg (B \diamondsuit C)} & {(\neg A \diamondsuit B) \,\heartsuit \, \neg(A \diamondsuit C)} \\
\hline
0 & 0 & 0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 & 1 & 1 \\
0 & 1 & 1 & 1 & 0 & 1 \\
1 & 0 & 0 & 1 & 0 & 1 \\
1 & 0 & 1 & 1 & 1 & 1\\
1 & 1 & 0 & 0 & 1 & 0 \\
1 & 1 & 1 & 0 & 0 & 1 \\
\end{array}
$$
Since the function tables differ (e.g. the case of $A = B = C = 1$) we can conclude that $F \not \equiv G$. Thus, the statement is disproven. $\qed$

___

## c)
![[DMath-e-u01.pdf#page=2&rect=106,175,390,190|DMath-e-u01, p.2]]
![[DMath-e-u01.pdf#page=3&rect=133,636,474,772|DMath-e-u01, p.3]]
![[DMath-e-u01.pdf#page=3&rect=104,587,521,635|DMath-e-u01, p.3]]

