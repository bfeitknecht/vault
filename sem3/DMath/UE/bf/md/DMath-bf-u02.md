
# 2.3
![[DMath-e-u02.pdf#page=1&rect=77,254,518,336|DMath-e-u02, p.1]]
![[dmath-script-hs24.pdf#page=32&rect=36,389,390,530|dmath-script-hs24, p.22]]

$$
\begin{align}
F &= \big( (B\vee C)\to((A\vee \neg B)\wedge C)\big)\vee(A\wedge \neg C)) &\text{(1., def. $\to$)} \\
&\equiv \big( \neg(B\vee C) \vee((A\vee \neg B)\wedge C)\big) \vee (A\wedge \neg C) &\text{(2., 1st distributive law)} \\
&\equiv \big( \neg(B\vee C) \vee((A \wedge C )\vee (\neg B \wedge C)\big) \vee (A\wedge \neg C) &\text{(3., de Morgan)} \\
&\equiv \big( (\neg B \wedge \neg C) \vee((A \wedge C )\vee (\neg B \wedge C)\big) \vee (A\wedge \neg C) &\text{(4., commutativity of $\vee$)} \\
&\equiv \big( (\neg B \wedge \neg C) \vee (\neg B \wedge C) \vee(A \wedge C )\big) \vee (A\wedge \neg C) &\text{(5., 1st distributive law)} \\
&\equiv \big( (\neg B \wedge (C \vee \neg C)) \vee (\neg B \wedge C) \vee (A \wedge C )\big) \vee (A\wedge \neg C) &\text{(6., $F \vee \neg F \equiv \top$)} \\
&\equiv \big( (\neg B \wedge \top) \vee (\neg B \wedge C) \vee (A \wedge C )\big) \vee (A \wedge \neg C) &\text{(7., $F \wedge \top \equiv F$)} \\
&\equiv \big( \neg B \vee (\neg B \wedge C) \vee (A \wedge C )\big) \vee (A \wedge \neg C) &\text{(8., absorption)} \\
&\equiv \big(\neg B \vee (A \wedge C )\big) \vee (A \wedge \neg C) &\text{(9., associativity)} \\
&\equiv \neg B \wedge C) \vee (A \wedge C ) \vee (A \wedge \neg C) &\text{(10., 1st distributive law)} \\
&\equiv (\neg B \wedge C) \vee (A \wedge (C \vee \neg C ) &\text{(10., 1st distributive law)} \\



\end{align}
$$