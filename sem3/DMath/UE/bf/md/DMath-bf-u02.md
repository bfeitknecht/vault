
# 2.3
![[DMath-e-u02.pdf#page=1&rect=77,254,518,336|DMath-e-u02, p.1]]

Let $G= A \vee \neg B$, proven to be equivalent to $F$ by equivalence transformations.

$$
\begin{align}
G &\equiv F \\
&\equiv \big( (B \vee C) \to ((A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(1., def. $\to$)} \\
&\equiv \big( \neg(B \vee C) \vee ((A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(2., de Morgan)} \\
&\equiv \big( (\neg B \wedge \neg C) \vee ((A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(3., commutativity of $\vee$)} \\
&\equiv (A \wedge \neg C) \vee \big( (\neg B \wedge \neg C) \vee ((A \vee \neg B) \wedge C) \big) &\text{(4., associativity)} \\
&\equiv \big( (A \wedge \neg C) \vee (\neg B \wedge \neg C) \big) \vee ((A \vee \neg B) \wedge C) &\text{(5., commutativity of $\wedge$)} \\
&\equiv \big( (\neg C \wedge A) \vee (\neg B \wedge \neg C) \big) \vee ((A \vee \neg B) \wedge C) &\text{(6., commutativity of $\wedge$)} \\
&\equiv \big( (\neg C \wedge A) \vee (\neg C \wedge \neg B) \big) \vee ((A \vee \neg B) \wedge C) &\text{(7., first distributive law)} \\
&\equiv \big( \neg C \wedge (A \vee \neg B) \big) \vee ((A \vee \neg B) \wedge C) &\text{(8., commutativity)} \\
&\equiv \big((A \vee \neg B) \wedge \neg C \big) \vee ((A \vee \neg B) \wedge C) &\text{(9., first distributive law)} \\
&\equiv (A \vee \neg B) \wedge (\neg C \vee C) &\text{(10., $F \vee \neg F \equiv \top$)} \\
&\equiv (A \vee \neg B) \wedge \top &\text{(11., $F \wedge \top \equiv F$)} \\
&\equiv A \vee \neg B &\square \\
\end{align}
$$
















$$
\begin{align}
F &= \big( (B \vee C) \to A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(1., def. $\to$)} \\
&\equiv \big( \neg(B \vee C) \vee ((A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(2., de Morgan)} \\
&\equiv \big( (\neg B \wedge \neg C) \vee ((A \vee \neg B) \wedge C) \big) \vee (A \wedge \neg C) &\text{(3., commutativity)} \\
&\equiv (A \wedge \neg C) \vee \big( (\neg B \wedge \neg C) \vee ((A \vee \neg B) \wedge C) \big) &\text{(4., associativity)} \\
&\equiv \big( (A \wedge \neg C) \vee (\neg B \wedge \neg C) \big) \vee ((A \vee \neg B) \wedge C) &\text{(5., commutativity)} \\
&\equiv \big( (\neg C \wedge A) \vee (\neg B \wedge \neg C) \big) \vee ((A \vee \neg B) \wedge C) &\text{(6., commutativity)} \\
&\equiv \big( (\neg C \wedge A) \vee (\neg C \wedge \neg B) \big) \vee ((A \vee \neg B) \wedge C) &\text{(7., first distributive law)} \\
&\equiv \big( \neg C \wedge (A \vee \neg B) \big) \vee ((A \vee \neg B) \wedge C) &\text{(8., commutativity)} \\
&\equiv \big((A \vee \neg B) \wedge \neg C \big) \vee ((A \vee \neg B) \wedge C) &\text{(9., first distributive law)} \\
&\equiv (A \vee \neg B) \wedge (\neg C \vee C) &\text{(10., $F \vee \neg F \equiv \top$)} \\
&\equiv (A \vee \neg B) \wedge \top &\text{(11., $F \wedge \top \equiv F$)} \\
&\equiv A \vee \neg B \\
&\equiv G &\square
\end{align}
$$



