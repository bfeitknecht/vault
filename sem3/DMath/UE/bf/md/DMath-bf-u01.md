
# 1.2
![[DMath-e-u01.pdf#page=1&rect=76,225,477,363|DMath-e-u01, p.1]]

$S\def n\text{ is the largest natural number}$ 
$T\def S \land n=1$
$S \nimpl T$

The mistake in this proof is that $S$ is a false statement, there exists no largest number $n\in \N$. Additionally, $T$ is a compound statement from $S$ and the the binding of its $n=1$. 
$\qed$

___

# 1.4
## (a)
![[DMath-e-u01.pdf#page=2&rect=106,525,512,569|DMath-e-u01, p.2]]

We define the formula $F \equiv(B\to C)\to(\neg(A\to C) \wedge \neg(A \vee B))$. Now we will simplify $F$ through a series of equivalence transformations.
$$
\begin{align}
F &\equiv(B\to C)\to(\neg(A\to C) \wedge \neg(A \vee B)) &\text{(def. $\to$)} \\
&\equiv (B \to C)\to(\neg(\neg A \vee B) \wedge \neg(A\vee B)) &\text{(de Morgan)} \\
&\equiv (B \to C)\to \neg((\neg A \vee B) \vee (A\vee B)) &\text{(associativity of $\vee$)} \\
&\equiv (B \to C)\to \neg(\neg A \vee B \vee A\vee B) &\text{(idempotence)} \\
&\equiv (B \to C)\to \neg(\neg A \vee A\vee B) &\text{(tautology)} \\
&\equiv (B \to C)\to \neg(\top \vee B) &\text{(dito)} \\
&\equiv (B \to C)\to \neg\top &\text{(unsatisfiability)} \\
&\equiv \neg(B \to C) \vee \bot &\text{(def. $\to$)} \\
&\equiv \neg \neg(B \vee C) \vee \bot &\text{(dito)} \\
&\equiv (B \vee C) \vee \bot &\text{(double negation)} \\
&\equiv B \vee C &\text{(unsatisfiability)} \\
\end{align}
$$

We arrive at the conclusion that $F\equiv A\vee B$, since we can freely rename the variables now that there exists no conflicts. The function table for $F$ is
$$
\begin{array}{c | c || c}
A & B & {F} \\
\hline
0 & 0 & 0 \\
0 & 1 & 1 \\
1 & 0 & 1 \\
1 & 1 & 1 \\
\end{array}
$$
$\qed$

___

## (b)
![[DMath-e-u01.pdf#page=2&rect=106,488,521,517|DMath-e-u01, p.2]]

We use the formula derived from subpart (a), namely $G\equiv A\vee B$.
$\qed$

___

# 1.5
![[DMath-e-u01.pdf#page=2&rect=78,346,417,452|DMath-e-u01, p.2]]

## a)
![[DMath-e-u01.pdf#page=2&rect=105,274,416,339|DMath-e-u01, p.2]]

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
![[DMath-e-u01.pdf#page=2&rect=105,173,519,190|DMath-e-u01, p.2]]
![[DMath-e-u01.pdf#page=3&rect=134,637,482,770|DMath-e-u01, p.3]]
![[DMath-e-u01.pdf#page=3&rect=104,587,521,635|DMath-e-u01, p.3]]

$G\equiv A \diamondsuit C \heartsuit B$
$\qed$