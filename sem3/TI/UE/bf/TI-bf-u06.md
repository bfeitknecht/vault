
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315


# 16
![[TI-e-u06.pdf#page=1&rect=68,339,530,571|TI-e-u06, p.1]]

## (a)
![[TI-e-u06.pdf#page=1&rect=98,316,531,337|TI-e-u06, p.1]]

We prove that the language $L$ is not regular using lemma 3.3.

For the sake of contradiction, let's suppose that $L$ is regular. Then there exists a finite automaton $A = (Q,\{a,b,c\},\delta,p_0,F)$ such that $L(A)=L$.

Let $k = |Q|$ denote the number of states in this finite automaton. Now we consider the words $a, ab, ab^{2}, \dots ab^{k+1}$. Since these are more words that $A$ has states, per pigeonhole principle there must exist $i, j \in [k+1]$ with $i \neq j$ such that for $x = ab^{i}, y = ab ^{j}$ the following holds.
$$
\hat \delta (q_{0}, x) = \hat \delta (g_{0}, y)
$$

Then, per lemma 3.3, $\forall x \in \{ a,b,c \}^{*}$ the below holds.
$$
xz \in L(A) \iff yz \in L(A)
$$

However, for $z = c^{i}$, this leads to a contradiction, since $xz = ab^{i}c^{i} \in L(A)$ but $yz= ab^{j}c^{i} \not\in L(A)$, since $i \neq j$. Hence the assumption is false and we have proven that $L$ is not regular.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[TI-e-u06.pdf#page=1&rect=96,292,532,311|TI-e-u06, p.1]]

Let $n_{0} = |\Sigma| = 3$. Then, for some $w \in L$ with $|w| \geq n_{0}$ and $w=w_{1}w_{2}w_{3}u$, we show that the language $L$ fulfills the weakened pumping lemma. We make a case distinction on the word, since $L$ is the union of two languages.


**Case** $w \in \{ a^{m}b^{n}c^{n} \mid m,n \in \mathbb{N}, m \geq 1 \}$

This is the case, where the word $w$ contains at least one $a$, i.e. $|w|_{a} \geq1$. From the construction of $L$, this implies that $w_{1} = a$.

Let $y=\lambda$, $x=w_{1}$ and $z=w_{2}w_{3}u$. Then $|yx| \leq n_{0}$, condition $(i)$ holds. The second requirement $(ii)$ also holds, since $|x| \geq 1$.

Now, we pump. All that remains is to show that the condition $(iii)$ also holds, i.e. $\{ yx^{k}z \mid k \in \mathbb{N} \} = \{ a^{k}w_{2}w_{3}u \mid k \in \mathbb{N} \} \subseteq L$. A simple case distinction on $k$ leads to the following.

For $k=0$, we get words of the form $w = yx^{0}z = \lambda\lambda w_{2}w_{3}u$. Per definition of $L$, we know that $w = a^{m-1}b^{n}c^{n}$, since the first symbol, which must be an $a$, is pumped to lambda, we have one less of it. This word is trivially in $L$ for $m > 1$. For $m = 1$, this word is in $\{ b,c \}^{*}$ and hence also in $L$.

For $k \neq 0$, we have words $w=\lambda w_{1}^{k}w_{2}w_{3}u$. Then the pumped word $w=a^{m+k}b^{n}c^{n}$ must be in $L$ also.

Thus $(i), (ii)$ and $(iii)$ hold.


**Case** $w \in \{ b,c \}^{*}$

This is the case where the word $w$ does not contain any symbol $a$, i.e. it contains only $|w|_{b}=i$ and $|w|_{c} = j$. Let $y=\lambda$, $x = w_{1}$ and $z = w_{2}w_{3}u$. Then we have $|yx| \leq n_{0}$, so condition $(i)$ holds. Also $|x| \geq 1$, thus requirement $(ii)$ holds too.

Then, no matter the symbol $w_{1}$, when we pump, we get a word of only $b$ and $c$. Thus $\forall k \in \mathbb{N},\ yx^{k}z \in L$ and condition $(iii)$ holds.


Thus we have shown that $L$ fulfills the weakened pumping lemma.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


## 17
![[TI-e-u06.pdf#page=1&rect=69,122,529,198|TI-e-u06, p.1]]

Let $M_{1}, M_{2}$ be two non-deterministic finite automata such that $L_{1}=L(M_{1})$ and $L_{2}=L(M_{2})$. Specifically, $M_{1} = (Q_{1}, \Sigma, \delta_{1}, q_{0}, F_{1})$ and $M_{2} = (Q_{2}, \Sigma, \delta_{2}, q_{c}, F_{2})$.

Then we construct a non-deterministic finite automaton $M$ as a product of $M_{1}$ and $M_{2}$ such that $L=L(M)$. Formally we define this as $M=(Q,\Gamma,\delta,q_{0},F)$, where $Q=Q_{1} \cup Q_{2}$ denotes the finite set of states, $\Gamma= \{ a,b,c \}$ is the input alphabet, $\delta: Q \times \Gamma \to \mathcal{P}(Q)$ the state transition function, $q_{0}$ is the initial state and $F = F_{2}$ is the set of accepted states.

The state transition function $\delta$ of $M$ is the union of $\delta_{1}$ and $\delta_{2}$, with the additional definition, that $(q, c) \in F_{1} \times \{ c \}$ transitions to $\langle \{ q_{c} \} \rangle \in \mathcal{P}(Q_{2})$.

Informally this is correct because, per construction any word $w \in L(M)$ has to have a prefix $w_{1}$ that is accepted by $M_{1}$, i.e. $w_{1} \in L(M_{1})$, then have the infix "$c$" and end in a suffix $w_{2}$ that is accepted by $M_{2}$, i.e. $w_{2} \in L(M_{2})$. Thus $M$ accepts exactly all words in $L = L_{1} \cdot \{ c \}  \cdot L_{2}$. Since there exist a finite automaton that accepts $L$, we have shown that it is regular.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 18
## (a)
![[TI-e-u06.pdf#page=2&rect=96,623,533,765|TI-e-u06, p.2]]

To prove that there is a strategy that *the taster* can use to eat all chocolates, we must show that the set of chocolates served to her is equinumerous to the number of rounds.

Let $i \in \mathbb{N}$ denote the $i$-th round of the game and $C_{i}=\{ c_{j \in [n_{i}]} \}$ be the set of $|C_{i}|=n_{i} \in \mathbb{N}$ chocolates served in that round. Then $C =\bigcup_{i \in \mathbb{N}}C_{i}$ denotes the set of all chocolates served during the whole game. So we denote the $j$-th chocolate in the $i$-th round with $c_{ij}=c_{j} \in C_{i}$.

We define the lexicographic total order on $C$ below. Then the strategy is to simply eat the chocolates in canonical order.
$$
c_{ij} \leq_{\text{lex}} c_{i'j'} \iff i < i' \lor (i = i' \land j < j')
$$

Since this is the canonical order, we have an injection from $C \to \mathbb{N}$ and thus it follows that $C \sim \mathbb{N}$ and hence the strategy described above is correct.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## (b)
![[TI-e-u06.pdf#page=2&rect=98,571,534,619|TI-e-u06, p.2]]

The previously described strategy no longer works, since the number of chocolates served in a particular round is not finite anymore. We prove the statement by a diagonalization argument.

We define the set $C$ similar to before, where $C_{i}= \{ c_{j \in \mathbb{N}} \}$ denotes the countably infinite set of chocolates served in round $i \in \mathbb{N}$.

The diagram below illustrates the order in which we eat the chocolates, where the rows denote the $i$-th round and the columns represent the $j$-th chocolate.
![[hromkovic-TI.pdf#page=143&rect=44,388,433,621|hromkovic-TI, p.130]]

In this way we enumerate over all chocolates served in all rounds, hence $C \sim \mathbb{N}$ and thus the strategy is correct.
$\square$
