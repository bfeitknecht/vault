> [!tip] INFO
> made with ‪‪♥ by:
> - Annik Petke (apetke)
> - Batuhan Akar (baakar)
> - Dimitrij Hauser (dhause)

# 16

$$
L=\{a^mb^nc^n\mid m \in \mathbb{N} - \{0\}, n\in \mathbb{N}\} \cup \{b,c\}^*
$$

### (a) Zu zeigen: L ist nicht regulär.

> [!Info] Um dies zu zeigen wenden wir Lemma 3.3 an, um einen Widerspruchsbeweis zu führen.

Angenommen L ist regulär.

L regulär $\implies \exists$ endlicher Automat A = (Q, {a,b,c}, δ, $q_0$, F) sodass $L(A) =L$.

Betrachten wir die Wörter $a, ab, \space ab^2,\space ..., \space ab^{|Q|+1}$.

Per Pigeonhole-Principle existieren nun $i,j \in \{1,...,|Q|+1\}$ mit $i<j$ und $i\neq j$, sodass

$$
\hat\delta (q_0, ab^i) =\hat\delta (q_0, ab^j)  
$$

Nach Lemma 3.3. gilt nun für alle $x \in \{a,b,c\}^*$:

$$
ab^ix \in L \Leftrightarrow ab^jx \in L 
$$

Sei $x = c^i$.

Somit haben wir $ab^ix = ab^ic^i \in L$ und gleichzeitig $ab^jx = ab^jc^i \notin L$ was zu einem Widerspruch führt. 

Somit ist $\{a^mb^nc^n\mid m \in \mathbb{N} - \{0\}, n\in \mathbb{N}\}$ nicht regulär $\implies$$\{a^mb^nc^n\mid m \in \mathbb{N} - \{0\}, n\in \mathbb{N}\} \cup \{b,c\}^*$ ist nicht regulär. 

Die Annahme ist demnach falsch und L ist nicht regulär. $\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\square$

---

### (b) Zu zeigen: L erfüllt das abgeschwächte Pumping Lemma.


### **Fall 2: $w \in \{b,c\}^*$** (komplementär zu **Fall 1**)

$w \in \{b,c\}^*$ $\Leftrightarrow w$ enthält kein a $\Leftrightarrow w$ besteht nur aus $\alpha$-vielen b und  $\beta$ -vielen c für $\alpha,\beta \in \mathbb{N}$

Sei $y = \lambda$ und $x = w_1$ und $z = w_2…w_{n_0}u$.

Wir haben $|yx| = |\lambda w_1| = |w_1| = 1 \le 3 = n_0$.

Ausserdem $|x| = |w_1| = 1 \ge 1$,

und $\{yx^kz|k\in \mathbb{N}\} = \{w_1^kw_2…w_{n_0}u|k\in \mathbb{N}\} \subseteq \{b,c\}^*\subseteq L$, da unabhängig davon ob $w_1 = b$ oder $w_1 = c$, das resultierende Wort $Konkat(w_1^k, w_2…w_{n_0}u)$ nur aus $\alpha$-vielen b und  $\beta$ -vielen c besteht für $\alpha,\beta \in \mathbb{N}$ und somit ein Element von $\{b,c\}^*$ sein muss.

Somit halten (i), (ii), (iii).

Somit erfüllt L das abgeschwächte Pumping Lemma.

# 17

Wir beweisen die folgende Aussage 
> [!quote]
> Seien $L_1$ und $L_2$ zwei reguläre Sprachen über dem Alphabet $\Sigma = \{a, b\}$. Dann ist auch die Sprache $L = L_1 \cdot \{c\} \cdot L_2$ über dem Alphabet $\{a, b, c\}$ regulär.

indem wir die Konstruktion eines endlichen Automaten $M$, welcher die Sprache $L$ erkennt angeben. 

> [!tip] sketch
> ![[TI Ex 6 2024-10-31 11.01.28.excalidraw]]

Da $L_1$ und $L_2$ reguläre Sprachen sind, gibt es endliche Automaten $M_1, M_2$ welche diese Sprachen erkennen. Also $L(M_1)=L_1$ und $L(M_2)=L_2$.

$M_1 = (Q_1, \Sigma, \delta_1, q_1, F_1)$ und
$M_2 = (Q_2, \Sigma, \delta_2, q_2, F_2)$
mit $\Sigma = \{a,b\}$.

Wir definieren einen endlichen Automaten $M = (Q, \Sigma', \delta, q_1, F)$ wobei:

1.  $Q=Q_1 \cup Q_2 \cup \{q_\text{trash}\}$
2. $\Sigma'=\{a,b,c\}$
3. $\delta(q,s) = \begin{cases} \delta_1(q, s) & q\in Q_1, s\in\Sigma\\  \delta_2(q, s) & q\in Q_2, s\in\Sigma\\ q_\text{trash} & q\in (Q_1\setminus F_1)\cup Q_2, s=c\\q_2 & q\in F_1, s=c\\\end{cases}$, for any $q\in Q, s\in\Sigma'$
4. $F=F_2$

> [!note] Informelle Begründung
> Ein Wort $w\in\Sigma'^*$ wird von $M$ genau dann akzeptiert, wenn es in einem akzeptierenden Zustand von $L_2$ endet, was nur durch den Übergang von einem akzeptierenden Zustand in $M_1$ via ein $c$ in den Start von $M_2$ geschehen kann. Alle anderen vorkommnisse von $c$ schicken ein wort in ein Auffangszustand $q_\text{trash}$.



# 18
## (a)

Die Strategie der Verkosterin ist simpel. In jeder Runde wählt sie eine zufällige Reihenfolge der Menge der neuhinzugefügten Pralinen und reiht die dann hinten an die schon bestehenden Pralinen an.
Danach wird die erste Praline in der totalen Reihenfolge gegessen.

Wir beschreiben die $i$-te Runde mit $R_i = \{P_i, n_i\}$ wobei:
1. $P_i$ ein beliebig geordnetes Tupel aller Pralinen, welche in dieser Runde hinzugefügt wurden, ist.
2. $n_i = |P_i|$

Jetzt kann man jede Praline einzigartig beschreiben mit $P_{i,j}$, wobei $P_{i,j}$ die $j$-te Praline der Runde $R_i$ ist.

Für jede beliebige Praline $P_{i,j}$, mit $1\leq j\leq n_i$ existiert eine Runde $R(P_{i,j})$, in der sie gegessen wird. Es gilt: $R(P_{i,j}) = \sum_{k=1}^{i-1} n_k + j$. Dies ist eine injektion$^1$ auf $\mathbb{N}\setminus\{0\}$, denn für zwei unterschiedliche Pralinen $P_{i_1, j_1}$ und $P_{i_2, j_2}$ gilt:
- falls $i_1 = i_2$ muss $j_1 \neq j_2$ gelten und deshalb $R(P_{i_1, j_1})\neq R(P_{i_2, j_2})$
- sonst $i_1\neq i_2$ und da $j_1\leq n_{i_1}$ und $j_2\leq n_{i_2}$ muss auch da $R(P_{i_1, j_1})\neq R(P_{i_2, j_2})$ gelten.

Da wir bei für jede Pralinen eine spezifische Runde angeben können, in der sie gegessen wird, wissen wir das in den zählbar unendlich vielen Runden jede Praline gegessen wird.

> 1 (sogar bijektion es sei denn für bestimmte Spiele wo ein $i$ existiert, so dass $\sum_{k=1}^i n_k< i$ was nur gelten kann wenn ein oder mehrere $n_k = 0$)

## (b
Wieder beschreiben wir die $j$-te Praline der $i$-ten Runde mit $P_{i,j}$.  Wie oben beschrieben, doch diesmal ist $j$ nach oben unbeschränkt unde $(i,j)\in(\mathbb{N}\setminus\{0\})\times(\mathbb{N}\setminus\{0\})$

Die Verkosterin isst die Praline $P_{i,j}$ in Runde $R(P_{i,j}) = {i+j-1\choose2}+j$, was eine Bijektion nach $\mathbb{N}\setminus\{0\}$ ist. 

Da wir bei für jede Pralinen eine spezifische Runde angeben können, in der sie gegessen wird, wissen wir das in den zählbar unendlich vielen Runden jede Praline gegessen wird.