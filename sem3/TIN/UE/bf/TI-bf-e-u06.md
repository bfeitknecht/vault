
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315

# 16
![[TI-e-u06.pdf#page=1&rect=68,339,530,571|TI-e-u06, p.1]]

## (a)
![[TI-e-u06.pdf#page=1&rect=98,316,531,337|TI-e-u06, p.1]]


## (b)
![[TI-e-u06.pdf#page=1&rect=96,292,532,311|TI-e-u06, p.1]]





## 17
![[TI-e-u06.pdf#page=1&rect=69,122,529,198|TI-e-u06, p.1]]

Let $M_{1}, M_{2}$ be two non-deterministic finite automata such that $L_{1}=L(M_{1})$ and $L_{2}=L(M_{2})$. Specifically, $M_{1}$

Then we construct a non-deterministic finite automaton $M$ as a product of $M_{1}$ and $M_{2}$ such that $L=L(M)$.

Formally we define this as $M=(Q,\Gamma,\delta,q_{0M},F)$, where $Q=Q_{1} \cup Q_{2}$ denotes the finite set of states, $\Gamma= \{ a,b,c \}$ denotes the input alphabet, $\delta: Q \times \Gamma \to \mathcal{P}(Q)$ is the state transition function, $q_{0}=q_{0M_{1}}$ is the initial state and $F = F_{2}$ is the set of accepted states.



> M_1 and M_2 NEA 
> 
> q0 is initial state of M_2
> q_c is initial state of M_2
> 
> delta from q in Q_1 to q_c with "c"
> otherwise delta_1 for q in Q_1
> and delta_2 for q in Q_2
> 
> informally this is correct because for any word to be accepted by M it has to be accepted in M_1 (is in L_1), then have a "c" (concat with "c") and then end with a word that is accepted (is in L_2). Thus M accepts L and thus L is regular

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
![[hromkovic-TIN.pdf#page=143&rect=44,388,433,621|hromkovic-TIN, p.130]]

In this way we enumerate over all chocolates served in all rounds, hence $C \sim \mathbb{N}$ and thus the strategy is correct.
$\square$
