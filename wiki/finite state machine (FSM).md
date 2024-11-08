
A [[deterministic]] **finite state machine** (FSM) is a 5-[[tuple]] $M =(Q, \Sigma, \delta, q_{0}, F)$, where 

1. $Q$ is a finite, non-empty [[set]] of *states*
2. $\Sigma$ is an [[alphabet]], called *input alphabet*
3. $\delta:Q \times\Sigma \to Q$ is the *state-transition [[function]]*
4. $q_{0}\in Q$ is the *initial state*
5. $F\subseteq Q$ is the set of *accepted states*


# Definition

The *state transition function* defines how $M$ transitions between states depending on the current input symbol, i.e. $\delta(q, x)=p$ means, that reading the symbol $x \in \Sigma$ in state $q$ transitions $M$ to state $p$ for some $q, p \in Q$.

We denote its [[transitive closure]] with $\hat\delta : Q \times \Sigma^{*} \to Q$, defined recursively as follows.
$$
\begin{align}
\hat\delta(q, \lambda) &= q, & \forall q \in Q \\
\hat\delta(q, wa) &= \delta (\hat\delta(q, w), a) & \forall w \in \Sigma^{*}, a \in \Sigma, q \in Q
\end{align}
$$

A *configuration* of $M$ is a 2-[[tuple]] of *state* $q$ and *input word* $w$, i.e. $(q, w) \in Q\times\Sigma^*$. It denotes that $M$ is in state $q$ and will read the [[substring|suffix]] of the input [[word]] $w$ next.

The configuration $(q_{0}, x)\in \{q_{0}\} \times\Sigma^*$ is called *initial configuration* of $M$ on $x$. Every configuration $(q, \lambda) \in Q\times \{\lambda \}$ is called an *end configuration*.

A *step* of $M$ is a [[relation]] on configurations, $\step{M} \subseteq (Q\times\Sigma^*)\times(Q\times\Sigma^*)$, defined by
$(q, w) \step{M} (p, x) \iff \delta(q, a) = p$, where $w=ax$, with $a \in \Sigma$. This corresponds to evaluating the transition function on the current configuration of $M$, resulting in a transition to state $p$.

Now, a *computation* $C=(C_{i})_{n}$ of $M$ is a finite [[sequence]] of $n$ steps between configurations, where we have $C_{i-1}\step{M}C_{i},\forall i\in[n]$. We call $C$ a computation of $M$ *on the input* $x\in\Sigma^*$ if $C_{0}=(q_{0},x)$ and $C_{n}\in Q \times \{\lambda\}$ is an end configuration.
If $C_{n}\in F\times\{\lambda\}$ we say that $C$ is an *accepting computation* of $M$ on $x$ and that $M$ *accepts* the word $x$. In the case that $C_{n}\in (Q-F) \times\{\lambda\}$ we say that $C$ is a *rejecting* computation of $M$ on $x$ and that $M$ *rejects* (doesn't accept) the word $x$. It's noted that $M$ has *exactly one* computation for every input $x\in\Sigma^*$.

The [[reflexive]] [[transitive closure]] of the steps relation has the meaning, that there is a computation of $M$ that starts from the configuration $(q, w)$ and leads to the configuration $p, u)$. This defined as follows.
$$
\begin{align}
(q, w) \steps{M} (p, u) \iff (q=p, w=u) \lor \exists (C)_{n} : C_{n} = (p, u)
\end{align}
$$

The [[language]] $L(M)$ *accepted* by $M$ is defined as the set of all words in $w\in\Sigma^*$ such that the computation on $w$ is accepted, i.e. it ends in some end configuration $(q, \lambda)$ with $q\in F$. This can be defined as below.
$$
\begin{align}
L(M) &= \{ w \in \Sigma^{*} \mid \exists p \in F : (q_{0}, w) \steps{M} (p, \lambda) \} \\
&= \{ w \in \Sigma^{*} \mid \hat\delta(q_{0}, w) \in F \}
\end{align}
$$

The class of all languages accepted by finite state machines is denoted by $\mathcal L_{EA}$. We also say the *class of regular languages* and specifically, every language $L \in\mathcal L_{EA}$ is called *regular*.


# Properties

We can also construct a [[non-deterministic finite state machine (NFSM)]], where the choice of the state transition is not deterministic. These two models are *equivalent*.


The [[equivalence relation]] defined below creates a [[partition]] of all possible words over the alphabet, where words $x, y \in \Sigma^{*}$ that end in the same state $p \in Q$ are in the same [[equivalence class]] $\mathrm{Kl}[p] = \{ w \in \Sigma^{*} \mid \hat\delta(q_{0}, w) = p \}$.
$$
x R_{\delta} y \iff \hat\delta(q_{0}, x) = \hat\delta(q_{0}, y)
$$

![[hromkovic-TI.pdf#page=70&rect=139,458,340,615|hromkovic-TIN, p.55|200]]
We observe that this creates the partition pictured above with $|Q|$ equivalence classes. Then,  we can define the accepted with these equivalence classes. This is given by the following. 
$$
\begin{align}
\mathrm{Kl}[p] \cap \mathrm{Kl}[q] &= \varnothing, & \forall p, q \in Q, p \neq q \\ \\
\Sigma^{*} &= \bigcup_{p \in Q} \mathrm{Kl}[p] \\
L(M) &= \bigcup_{p \in F} \mathrm{Kl}[p]
\end{align}
$$


For an alphabet $\Sigma$ and two  FSM $M_{1}, M_{2}$, defined as usual, the process of [[simulation]] allows us to construct a product FSM that *simulates* the transitions of its two components at the same time. Formally, we say that vor every set operation $\diamond \in \{ \cup, \cap, - \}$, there exists a FSM $M$ such that $L(M) = L(M_{1}) \mathrel\Box L(M_{2})$. We define this product FSM $M = (Q, \Sigma, \delta, q_{0}, F_{\mathrel\Box})$ as below.

1. $Q = Q_{1} \times Q_{2}$
2. $\delta((q, p), a) = (\delta_{1}(q,a), \delta_{2}(p, a)), \quad\forall(q,p) \in Q, a \in \Sigma$
3. $q_{0} =(q_{0_{1}}, q_{0_{2}})$
	- if $\Box = \cup$ then $F = F_{1} \times Q_{2} \cup Q_{1} \times F_{2}$, i.e. either one of $M_{1}, M_{2}$ has to accept
	- if $\Box = \cap$ then $F = F_{1} \times F_{2}$, both $M_{1}$ and $M_{2}$ have to accept
	- if $\Box = -$ then$F=F_{1} \times (Q_{2} - F_{2})$, so $M_{1}$ has to accept and $M_{2}$ mustn't accept



___










ch.3.4, proof of non-existence

![[hromkovic-TI.pdf#page=83&rect=38,150,445,249|hromkovic-TIN, p.68]]

what it's saying is, that given two inputs (different) that end in the same configuration, we can add an arbitrary identical suffix and the end configuration will be the same


$a^nb^n$ is not regular language := proven by contradiction using lemma 3.3. construct FSM and use pigeon hole principle on equivalence classes in Q

becasue we define more words than the FSM has configurations, exists two natural numbers i, j in \[|Q|+1] i < j such that the word $0^i 1^i$ is in the language but $0^j 1^i$ isn't


![[hromkovic-TI.pdf#page=84&rect=42,173,440,341|hromkovic-TIN, p.69]]








In contrast, a [[non-deterministic]] FSM is the same (quintuple), but the state transition function maps to the [[power set]] of states, i.e.  there may be multiple arrows with the same symbol going out from a node. the FSM accepts all words such that there exists a path that ends in an accepting state.


The computation tree $\mathcal{B}_{M}(x)$ of $M$ on $x$ describes all the possible "decision" we can take. The nodes of the tree are the configurations, the root is the initial configuration

![[hromkovic-TI.pdf#page=93&rect=44,406,420,624|hromkovic-TIN, p.78]]






