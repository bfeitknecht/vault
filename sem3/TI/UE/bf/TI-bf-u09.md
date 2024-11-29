
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315


# 25 ![[TI-e-u09.pdf#page=1&rect=68,463,532,565|TI-e-u09, p.1]]

Let $M$ be the given 1-tape TM. Then, consider the inner configuration $\mathrm{In}(C)$ for a configuration $C \in \mathrm{Konf}(M)$. Since $M$ always halts, the inner configurations cannot be encountered more than once. Thus, an upper bound on the number of inner configurations yields an upper bound on the time complexity.

Recall that an inner configuration is of the form $\mathrm{In}(C) = (q, i, x, j)$, where $q \in Q$ is the current state, $x \in \Gamma^{*}$ is the current word on the working tape, $i$ denotes the index of the read head on the input tape and $j$ denotes the index of the position of the read / write head on the working tape. Then we explore the upper bound for all possible inner configurations on input words of length $n$.

The number of states is trivially exactly $|Q|$. The index of the read head is at most $n + 1$, where $n = |w|$ plus one for the initial symbol, $w_{0} = \textcent$. The word on the working tape $x = 01^{i_{1}}2^{i_{2}} \dots (k-1)^{i_{k-1}} kkkk \dots$ can be upper bounded as the first $k$ symbols have space complexity of at most $s(n)$ given by the definition of $M$. Lastly, the index on the working tape is at most $s(n)+1$, as that limits the length of the word written there with regards for the initial symbol.
$$
\begin{align}
|\mathrm{InKonf}_{M}(n)| &\leq |Q| \cdot (n+1) \cdot s(n)^{k-1} \cdot (s(n) + 1) \\
&\leq c \cdot n \cdot s(n)^{k}  \in O(n \cdot s(n)^{k})
\end{align}
$$

As we have upper bounded the number of inner configurations it follows that the time complexity of $M$ respects the given constraint, $\mathrm{Time}_{M}(n) \in  O(n \cdot s(n)^{k})$.
$\square$


<div class="page-break" style="page-break-before: always;"></div>

# 26 ![[TI-e-u09.pdf#page=1&rect=68,400,532,422|TI-e-u09, p.1]]

## a) ![[TI-e-u09.pdf#page=1&rect=95,376,531,393|TI-e-u09, p.1]]

To prove is that for any two languages $L_{1}, L_{2} \in \mathrm{NTIME}(f)$ it holds that $L_{1} \cup L_{2} \in \mathrm{NTIME}(f)$. Notice that the given function $f$ is time-constructible, since it grows monotonically and is always greater or equal to its input.

By definition of $\mathrm{NTIME}$, it holds that there exist two non-deterministic MTM $M_{1}, M_{2}$ that accept the given languages, i.e. $L_{1} = L(M_{1})$ and $L_{2} = L(M_{2})$. Then it's given that $\mathrm{Time}_{M_{1}}(n), \mathrm{Time}_{M_{2}}(n) \in O(f(n))$. This is defined as the duration of the longest computation on all inputs of length $n$.

Then construct a non-deterministic MTM $M$ that non-deterministically simulates $M_{1}$ and $M_{2}$ on some input $x$ of length $n$. If there exists an accepting computation in either $M_{1}$ or $M_{2}$ then $M$ accepts $x$. If this isn't the case, $M$ rejects. Thus $M$ accepts exactly the union of the two languages, i.e. $L(M) = M_{1} \cup M_{2}$.  By construction we have $\mathrm{Time}_{M}(n) = \max\{ \mathrm{Time}_{M_{1}}(n), \mathrm{Time}_{M_{2}}(n) \}$. Thus it follows that $\mathrm{Time}_{M}(n) \in O(f(n))$ and hence $L_{1} \cup L2 \in \mathrm{NTIME}(f)$.

Informally it can be argued that a non-deterministic MTM that accepts the union of the two languages takes at most as long as the longer one of the two non-deterministic MTM that accept either one. Since this is still within the bounds of the space complexity class defined by $f$, the union of the languages is in the same time complexity class.
$\square$


## b) ![[TI-e-u09.pdf#page=1&rect=96,350,532,368|TI-e-u09, p.1]]

Let $M_{1}$ be a non-deterministic MTM that accepts $L = L(M_{1})$ with $\mathrm{Time}_{M}(n) \in O(f(n))$ and let $M_{2}$ be a deterministic MTM that accepts $L' = L(M_{2})$ with $\mathrm{Time}_{M_{2}}(n) \in O(f(n))$, by the definitions of the complexity classes $\mathrm{NTIME}(f)$ and $\mathrm{TIME}(f)$. Then we prove that $L - L' \in \mathrm{NTIME}(f)$ by describing the construction of a non-deterministic MTM $M$ that accepts $L - L' = L(M)$ with $\mathrm{Time}_{M}(n) \in O(f(n))$.

For an input $x$ of length $n$, first $M$ simulates $M_{1}$ to determine if $x \in L$. If it isn't, $M$ rejects $x$. Then in a second step, $M$ simulates $M_{2}$ on $x$ and accepts if $x \not\in L'$, else it rejects. Hence $L(M) = \{ x \in L : x \not\in L' \} = L - L'$, with $\mathrm{Time}_{M}(n) = \mathrm{Time}_{M_{1}}(n) + \mathrm{Time}_{M_{2}}(n)$ which is trivially in $O(f(n))$. Thus $L - L' \in \mathrm{NTIME}(f)$
 
Informally this can be understood as stating that the problem of deciding the language $L - L'$ isn't any "easier" by subtracting all words of a language in deterministic time complexity, since $\mathrm{TIME}(t) \subseteq \mathrm{NTIME}(t)$ for any function $t$ by lemma 6.6.
$\square$


<div class="page-break" style="page-break-before: always;"></div>

# 27 ![[TI-e-u09.pdf#page=1&rect=68,249,530,281|TI-e-u09, p.1]]

Let's obtain a subset $L' \subseteq L$ such that $L' \not\in \mathcal{L}_{\mathrm{RE}}$. To construct it, consider all words $w_{i} \in L$ in canonical order such that the $i$-th TM $M_{i}$ per canonical order of $\mathrm{\mathrm{KodTM}}$ does not accept $w_{i}$, i.e. $L' = \{ w_{i} \in L \mid M_{i}(w_{i}) \not\steps{M} C_{\checkmark} \}$.

For the sake of contradiction, assume $L' \in \mathcal{L}_{\mathrm{RE}}$. Then there exists a TM $M$ such that $L(M) = L'$ with index $j \in \mathbb{N}$ of the canonical order in $\mathrm{\mathrm{Kod}TM}$. Case distinction on the word $w_{j}$. If it's in the subset language $w_{j} \in L'$, then $M = M_{j}$ accepts it $M_{j}(w_{j})$. By construction however, it holds that $w_{j} \not\in L(M_{j}) = L'$. Contradiction.

If $w_{j} \not\in L'$, the TM rejects it $M_{j}(w_{j})$, since $L' = L(M_{j})$. By definition of the subset language however, this implies that $w_{j} \in L'$. Contradiction.

As both scenarios lead to a contradiction, our initial assumption must be wrong and hence it follows that $L' \not\in \mathcal{L}_{\mathrm{RE}}$.
$\square$
