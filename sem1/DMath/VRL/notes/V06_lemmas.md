

$S \Rightarrow T$ beweisen, indem man
$T\, falsch \Rightarrow S\, falsch$ beweist.



>[!example] Lemma: $A\rightarrow B \equiv \lnot B \rightarrow \lnot A$
>x irrational $\Rightarrow$ $\sqrt{x}$ irrational
>$\sqrt{x}$ rational (T falsch) $\overset{\cdot}{\Leftrightarrow}$ $\frac{m}{n} \, für \, m,\,n \in \mathbb{Z},\, n\neq 0$ (Def. von rational)
>$\overset{\cdot}{\Rightarrow} x = \frac{m^2}{n^2}$ (Gleichung quadrieren)
>$\overset{\cdot}{\Rightarrow} x = \frac{u}{v} \, für \, u,\, v \in \mathbb{Z},\, v\neq 0$
>$\overset{\cdot}{\Rightarrow} x\, rational$ (Def. rational)

>[!example] Lemma: $A \wedge (A\rightarrow B)$
>$(A_1 \vee A_2) \wedge (A_1 \rightarrow B) \wedge (A_2 \rightarrow B) \models B$
>$(A_1 \vee A_2 \vee \cdot\cdot\cdot \vee A_k) \wedge (A_1 \rightarrow B) \wedge (A_2 \rightarrow B) \wedge \cdot\cdot\cdot \wedge (A_k \rightarrow B) \models B$

>[!example] Lemma: $(\lnot A \rightarrow B) \wedge \lnot B \models B$
>$S\, falsch \overset{\cdot}{\Rightarrow}$
>$\quad\quad\quad\quad\overset{\cdot}{\Rightarrow}$
>$\quad\quad\quad\quad\overset{\cdot}{\Rightarrow} T \, falsch$
>
>Bsp. S: $\sqrt{2} \, ist \, irrational$
>$S \, falsch \overset{\cdot}{\Leftrightarrow} \sqrt{2} \, ist\, rational$
>$\overset{\cdot}{\Rightarrow} \sqrt{2} = \frac{m}{n} \, für \, m, \, n \in \mathbb{Z}, \, n\neq 0 \quad(Def. von \, rational)$ ==m, n sind teilerfremd: ggT(m, n) = 1==
>$\overset{\cdot}{\Rightarrow} 2n^2 = m^2$
>$\overset{\cdot}{\Rightarrow} ggt(m, \, n) \geq 2$



$S_x \, für \, Parameter \, x\in\mathbb{X}$
$S_a \quad \forall m \exists p (prime(p) \wedge p>m$
$m! +1$


>[!example] Induktion
>$U=\mathbb{N}, \, fixes \, P$
>Theorem:
>$P(O) \wedge \forall n (P(n) \rightarrow P(n+1)) \implies \forall n, \,P(n)$
>$\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\models \forall n, \,P(n)$
>$\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\quad\rightarrow \forall n, \,P(n)$





{{1}} = {1} ?


Russell
$R \overset{def.}{=} \{ A | A \notin A\}$
$R \in R \implies R \notin R$
$R \notin R \implies R\in R$
-> **Paradox!**

Geht nicht, weil Universum aller Mengen ist keine Menge



$\forall x (x\in A \leftrightarrow x\in B) \overset{def.}{\Leftrightarrow} A=B$





