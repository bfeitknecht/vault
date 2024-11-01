  
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-31

# 16
![[TheInf-Exe-06.pdf#page=1&rect=69,337,561,570|TheInf-Exe-06, p.1]]
## (a)
![[TheInf-Exe-06.pdf#page=1&rect=96,314,565,335|TheInf-Exe-06, p.1]]


___
## (b)
![[TheInf-Exe-06.pdf#page=1&rect=94,289,562,312|TheInf-Exe-06, p.1]]
Lets look at the same word as in (a) so (i) and (ii) stay the same.
If  we decompose the word in the following way:
	$x = a$
	$y = \lambda$
	$z = b^{n_0}c^{n_0}$
If we pump x all words now stay in L satisfing the weakend pumping lemma.

# 17
![[TheInf-Exe-06.pdf#page=1&rect=69,118,535,199|TheInf-Exe-06, p.1]]
Let $M_{1}, M_{2}$ be two non-deterministic finite automata such that $L_{1}=L(M_{1})$ and $L_{2}=L(M_{2})$. Specifically, $M_{1} = (Q_{1}, \Sigma, \delta_{1}, q_{0}, F_{1})$ and $M_{2} = (Q_{2}, \Sigma, \delta_{2}, q_{c}, F_{2})$.

  

Then we construct a non-deterministic finite automaton $M$ as a product of $M_{1}$ and $M_{2}$ such that $L=L(M)$. Formally we define this as $M=(Q,\Gamma,\delta,q_{0},F)$, where $Q=Q_{1} \cup Q_{2}$ denotes the finite set of states, $\Gamma= \{ a,b,c \}$ is the input alphabet, $\delta: Q \times \Gamma \to \mathcal{P}(Q)$ the state transition function, $q_{0}$ is the initial state and $F = F_{2}$ is the set of accepted states.

  

The state transition function $\delta$ of $M$ is the union of $\delta_{1}$ and $\delta_{2}$, where we define $(q, c) \in F_{1} \times \{ c \}$ to transition to $\langle q_{c} \rangle \in \mathcal{P}(Q_{2})$.

  

Informally, this is correct because for any word accepted by $M$ it has to be accepted in M_1 (is in L_1), then have a "c" (concat with "c") and then end with a word that is accepted (is in L_2). Thus M accepts L and thus L is regular

# 18
## (a)
![[TheInf-Exe-06.pdf#page=2&rect=97,627,533,766|TheInf-Exe-06, p.]]
To prove that there is a strategy that *the taster* can use to eat all chocolates, we must show that the set of chocolates served to her is equinumerous to the number of rounds.

  

Let $i \in \mathbb{N}$ denote the $i$-th round of the game and $C_{i}=\{ c_{j \in [n_{i}]} \}$ be the set of $|C_{i}|=n_{i} \in \mathbb{N}$ chocolates served in that round. Then $C =\bigcup_{i \in \mathbb{N}}C_{i}$ denotes the set of all chocolates served during the whole game. So we denote the $j$-th chocolate in the $i$-th round with $c_{ij}=c_{j} \in C_{i}$.

  

We define the lexicographic total order on $C$ below. Then the strategy is to simply eat the chocolates in canonical order.

$$

c_{ij} \leq_{\text{lex}} c_{i'j'} \iff i < i' \lor (i = i' \land j < j')

$$

  

Since this is the canonical order, we have an injection from $C \to \mathbb{N}$ and thus it follows that $C \sim \mathbb{N}$ and hence the strategy described above is correct.

$\square$

___
## (b)
![[TheInf-Exe-06.pdf#page=2&rect=97,573,530,622|TheInf-Exe-06, p.]]
The previously described strategy no longer works, since the number of chocolates served in a particular round is not finite anymore. We prove the statement by a diagonalization argument.

  

We define the set $C$ similar to before, where $C_{i}= \{ c_{j \in \mathbb{N}} \}$ denotes the countably infinite set of chocolates served in round $i \in \mathbb{N}$.

  

The diagram below illustrates the order in which we eat the chocolates, where the rows denote the $i$-th round and the columns represent the $j$-th chocolate.

![[hromkovic-TIN.pdf#page=143&rect=44,388,433,621|hromkovic-TIN, p.130]]

  

In this way we enumerate over all chocolates served in all rounds, hence $C \sim \mathbb{N}$ and thus the strategy is correct.

$\square$