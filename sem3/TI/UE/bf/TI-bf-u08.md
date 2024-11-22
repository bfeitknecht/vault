
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315

# 22

Prove that the language below is not recursive by providing an explicit mapping reduction and proving its correctness. Let $|M(x)|_{q}$ denote the number of times a TM $M$ reaches the state $q$ during the computation on $x$.
$$
L_{\mathrm{reach}} = \{ \mathrm{Kod}(M)\#0^{i} \mid i \in \mathbb{N}, |Q_{M}| > i, \exists x \in \Sigma_{M}^{*} : |M(x)|_{q_{i}} \geq 1 \}
$$

To prove is that $L_{\mathrm{reach}} \not\in \mathcal{L}_{\mathrm{R}}$. To do so, let's construct an explicit reduction $L_{\mathrm{H}} \leq_{\mathrm{EE}} L_{\mathrm{reach}}$. Let $A$ be an algorithm, i.e. TM that always halts which decides $L_{\mathrm{reach}}$. Then we construct a TM $B$ that, given $A$ decides $L_{\mathrm{H}}$.

For some input $x \in \{ 0, 1, \# \}^{*}$ a preprocessing TM $C$ decides if it isn't of the right form, i.e. if $x \not\in \mathrm{KodTM} \cdot \{ \# \} \cdot\Sigma^{*}_{\mathbb{B}}$, $B$ rejects immediately. Else it holds that $x=\mathrm{Kod}(M)\#w$, for some $w \in \Sigma^{*}_{\mathbb{B}}$. Then $C$ constructs a TM $M'$ that simulates $M(w)$ with the modification that any state that transitions to the rejecting state, instead goes to the accepting state. Additionally, $C$ defines $i$ as the index of the accepting state in $M'$ and passes $y = \mathrm{Kod}(M')\#0^{i}$ to the algorithm $A$. It's evident that $C$ always halts, since we only check an input and modify a given TM.

Proof of correctness. Let's show that the following holds.
$$
x \in L_{\mathrm{H}} \iff B(x) \in L_{\mathrm{reach}}
$$

First, let's cover the forward implication. Assume $x=\mathrm{Kod}(M)\#w \in L_{\mathrm{H}}$, then $M$ halts on $w$ by definition 5.6. Per construction, $M'$ transitions to the state $i$-th state $q_{i} = q_{\checkmark}$ which is the accepting state. Thus $B(x) \in L_{\mathrm{reach}}$.

Secondly, let's cover the backwards implication. Assume $B(x) \in L_{\mathrm{reach}}$, where $x=\mathrm{Kod}(M)\#w$. Then the $i$-th state of $M'$ is reached. By construction this happens only if $M$ halts on $w$. Thus we have $x \in L_{\mathrm{H}}$.

Hence, $B$ always halts and accepts if and only $x \in L_{\mathrm{H}}$, otherwise it rejects.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 23 

We consider an alphabet $\Sigma$ and the following language. Show that it is not recursive by applying rice's theorem.
$$
L_{\mathrm{all}}  = \{ \mathrm{Kod}(M) \mid L(M) = \Sigma^{*} \}
$$

First, we show that the language $L_{\mathrm{all}}$ is a semantically non-trivial decision problem about TMs. We prove this by showing it fulfills the requirements $(i) - (iii)$ of definition 5.7.

- $(i) \quad L_{\mathrm{all}} \neq \varnothing$
We need to show that the language is not the empty set. Consider a TM $M_{1}$ such that any state $q \in Q_{M_{1}}$ transitions to the accepting state $q_{\checkmark}$ on all input. Thus $L(M_{1}) = \Sigma^{*} \implies \mathrm{Kod}(M_{1}) \in L_{\mathrm{all}}$.

- $(ii) \quad L_{\mathrm{all}} \neq \mathrm{KodTM}$
The language cannot contain every TM encoding. Consider the TM $M_{2}$ that never accepts, i.e. every state $q \in Q_{M_{2}}$transitions to the rejecting state $q_{\mathsf{x}}$ on all inputs. Thus we have $L(M_{2}) = \varnothing \neq \Sigma^{*} \implies \mathrm{Kod}(M_{2}) \not\in L_{\mathrm{all}}$.

- $(iii) \quad L(A) = L(B) : \mathrm{Kod}(A) \in L_{\mathrm{all}} \iff \mathrm{Kod}(B) \in L_{\mathrm{all}}$ for two TMs $A, B$
Two TMs accepting the same language implies that their encodings are either both elements of $L_{\mathrm{all}}$ or both aren't. To prove this, we assume there are two TMs $A, B$ such that $L(A) = L(B)$, however, one's encoding is in $L_{\mathrm{all}}$ while the other's isn't. Then we show that this leads to a contradiction.
Let $L(A)=L(B) \subseteq \Sigma^{*}$. Then, without loss of generality, let $\mathrm{Kod}(A) \in L_{\mathrm{all}}$. Per definition of $L_{\mathrm{all}}$ this means $L(A)=\Sigma^{*}$. Since we assume $L(A)=L(B)$, this implies $\mathrm{Kod}(B) \in L_{\mathrm{all}}$. But by assumption we have $\mathrm{Kod}(B) \not\in L_{\mathrm{all}}$. Contradiction. Thus, for two TMs, $A,B$ with $L(A)=L(B)$ we have $\mathrm{Kod}(A) \in L_{\mathrm{all}} \iff \mathrm{Kod}(B) \in L_{\mathrm{all}}$.

Hence we have shown that $L_{\mathrm{all}}$ is a semantically non-trivial decision problem about TMs. By theorem 5.9 (rice's theorem) this proves that $L_{\mathrm{all}}$ is undecidable and thus not recursive, i.e. $L_{\mathrm{all}} \not\in \mathcal{L}_{\mathrm{R}}$. A formal proof is given below.


Since $M_{\varnothing} \not\in L_{\mathrm{all}}$, with $L(M_{\varnothing})=\varnothing$ we construct a TM $S$ that realizes the reduction $L_{\mathrm{H}, \lambda} \leq_{\mathrm{EE}} L_{\mathrm{all}}$. By lemma 5.8 we have $L_{\mathrm{H},\lambda} \not\in \mathcal{L}_{\mathrm{R}}$. Per non-triviality of $L_{\mathrm{all}}$, let $\widetilde{M}$ be a TM such that $\mathrm{Kod}(\widetilde{M}) \in L_{\mathrm{all}}$, which exists per definition 5.7. Then for an input $x \in \Sigma^{*}_{\mathbb{B}}$ the TM $S$ first checks if it's a valid encoding of a TM. If this isn't the case, i.e. $x \not\in \mathrm{KodTM}$, it outputs $S(x) = \mathrm{Kod}(M_{\varnothing})$. Otherwise, $x=\mathrm{Kod}(M) \in \mathrm{KodTM}$ and we have $S(x) = \mathrm{Kod}(A)$, where $A$ is defined as follows.

The input alphabet of $A$ is equal to that of $\widetilde{M}$, specifically $\Sigma_{A} = \Sigma_{\widetilde{M}}$. For an arbitrary input word $y \in \Sigma^{*}_{\widetilde{M}}$, the TM $A$ then first simulates $M$ on the empty word $\lambda$, without overwriting the input $y$. Then $A$ simulates $\widetilde{M}$ on the word $y$. Thus $S$ accepts $y$ if and only if $\widetilde{M}$ accepts $y$. We prove the correctness, below.
$$
x \in L_{\mathrm{H}, \lambda} \iff S(x) \in L_{\mathrm{all}}
$$

First, let's prove the forward implication, i.e. the "if". Assume $x \in L_{\mathrm{H}, \lambda}$. Then we show that $S(x) \in L_{\mathrm{all}}$. Per assumption, the TM $M$ encoded in $x$ halts on $\lambda$, hence $A$ will simulate $\widetilde{M}$ on $y$ which means $L(A) = L(\widetilde{M})$. Because $L_{\mathrm{all}}$ is a semantic decision problem, it then holds that $\mathrm{Kod}(\widetilde{M}) \in L_{\mathrm{all}} \implies \mathrm{Kod}(A) \in L_{\mathrm{all}}$. Per definition of $\widetilde{M}$, the LHS is true and thus we have $S(x) = \mathrm{Kod}(A) \in L_{\mathrm{all}}$.

Then, let's cover the "only if". Assume $x \not\in L_{\mathrm{H}, \lambda}$. Then we show that $S(x) \not\in L_{\mathrm{all}}$. Contraposition results in the desired backward implication. Case distinction. If $x \not\in \mathrm{KodTM}$ is not a valid encoding of a TM, per definition $S(x) = \mathrm{Kod}(M_{\varnothing}) \not\in L_{\mathrm{all}}$. Else, if $x=\mathrm{Kod}(M) \in \mathrm{KodTM}$ is a valid encoding of a TM, per assumption it doesn't halt on $\lambda$ and so $A$ never halts. Thus $L(A) = L(M_{\varnothing})$. By semantic properties and the fact that $\mathrm{Kod}(M_{\varnothing})\not\in L_{\mathrm{all}}$ it follows that $S(x) = \mathrm{Kod}(A) \not\in L_{\mathrm{all}}$.

Thus we have proven the correctness of our reduction which directly implies that the language is not recursive, i.e. $L_{\mathrm{all}} \not\in \mathcal{L}_{\mathrm{R}}$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 24

Let $M$ be a 1-tape TM that always halts. Prove that there exists an equivalent 2-tape TM $A$ such that the following holds for some constant $c$ and for all $n$.
$$
\begin{align}
\mathrm{Time}_{A}(n) &\leq \frac{\mathrm{Time}_{A}(n)}{2} + \frac{13n}{12} + c
\end{align}
$$

We define the 2-tape TM $A$ as follows.
- Its input tape is identical to that of $M$.
- Every step, $A$ reads $12$ entries of the input tape and writes it on its first working tape as 12-tuple.
  
This can be understood as one symbol of a larger alphabet $\Gamma_{A}$. Then the first working tape has $\left\lceil  \frac{n}{12}  \right\rceil$ entries. Writing these takes $n+1$ computation steps. Then $A$ returns to the starting entry, which takes $\left\lceil  \frac{n}{12}  \right\rceil$ steps. The number of steps taken so far is given below.
$$
n + 1 + \left\lceil  \frac{n}{12}  \right\rceil  = 1 + \left\lceil  \frac{13n}{12}  \right\rceil  \leq 2 + \frac{13n}{12}
$$

Now we use the first working tape as modified input tape. The second working tape is used as actual working tape over the working alphabet of 12-tuples. Then, in every step $A$ computes the following.

- The TM $A$ stores the $3 \cdot 12 = 36$ entries of the current entry, the one left to it and the one to its right. To do this, we take one step right, then one to the left and finally one to the right again. This takes four steps.
- Every $12$ steps in $M$ can at most affect $2$ entries of $A$, since they must occur sequentially. According to these steps in $M$, the MTM $A$ then modifies the current entry and the one to its left (exclusive) or right. This includes moving the read/write head and in total takes two steps.

Every computation step in $A$ takes $4+2=6$ elementary steps. In the original TM $M$ this corresponds to twelve steps. Thus the time taken for the simulation is given as follows.
$$
6 \cdot \left\lceil  \frac{\mathrm{Time}_{M}(n)}{12}  \right\rceil  \leq \frac{\mathrm{Time}_{M}(n)}{2}+6
$$

Hence the inequality to show holds.
$$
\mathrm{Time}_{A}(n) \leq \frac{\mathrm{Time}_{M}(n)}{2} + 6 + 2 + \frac{13n}{2} = \frac{\mathrm{Time}_{M}(n)}{2} + \frac{13n}{2} + c
$$
$\square$
