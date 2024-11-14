
# 19 ![[TI-e-u07.pdf#page=1&rect=67,518,527,566|TI-e-u07, p.1]]

First, let's recall the definition of the halting language.
$$
L_{\mathrm{H}} = \{ \mathrm{Kod}(M)\#x \in \Sigma^{*}_{\mathbb{B}} \mid x \in L(M) \lor x \not\in L(M) \}
$$

Now, assume there exists an algorithm (TM that always halts) $A$ that decides $L_{\mathrm{H}}$. Then, we construct an algorithm $B$ that decides the given language $L'_{\mathrm{diag}}$ with the help of $A$.
![[TI-e-u07-19.png|500]]

First, the subprogram $C$ tests, whether or not the input word $x = w_{j}$ is of the correct form, i.e. it has an even index $j = 2i$ for some $i \in \mathbb{N}$ in the canonical order of words over $\{ 0,1 \}$. If it isn't, $B$ rejects the input word $x$ immediately.

Otherwise, $C$ computes the $i$-th TM $\mathrm{Kod}(M_{i})$ with the totally recursive function $\mathrm{Gen}$, which exists per lemma 4.3. Then, it constructs a turing machine $M$ from $\mathrm{Kod}(M_{i})$ that doesn't take any input but simulates $M_{i}$ on $x$ with the modification, that any state in $M_{i}$ that transitions to the accepting state $q_{\checkmark}$ instead enters an infinite loop. It's noted, that $M$ halts if and only if $M_{i}$ halts and rejects $x$.

Then, the algorithm $A$ decides if the TM $M$ described above halts on $x$. Hence we have the following.
$$
x \in L'_{\mathrm{diag}} \iff M(x) \in L_{\mathrm{H}}
$$

This implies that $L'_{\mathrm{diag}} \leq_{\mathrm{R}} L_{\mathrm{H}}$. 
$\square$


<div class="page-break" style="page-break-before: always;"></div>

# 20 ![[TI-e-u07.pdf#page=1&rect=66,406,529,456|TI-e-u07, p.1]]
Prove the following statements.

## (a) $L_{\text{union}} \in \mathcal{L}_{\mathrm{RE}}$

Per subtask (c), we have constructed a TM $B$ that reduces $L_{\mathrm{union}}$ to $L_{\mathrm{U}}$. Then per definition of $\mathcal{L}_{\mathrm{RE}}$ we have $L_{\mathrm{union}} \in \mathcal{L}_{\mathrm{RE}}$.
$\square$

## (b) $L_{\mathrm{U}} \leq_{\mathrm{EE}} L_{\text{union}}$



## (c) $L_{\text{union}} \leq_{\mathrm{EE}} L_{\mathrm{U}}$

First, recall the definition of the universal TM language $L_{\mathrm{U}}$.
$$
L_{\mathrm{U}} = \{ \mathrm{Kod}(M)\#w \in \Sigma^{*}_{\mathbb{B}} \mid w \in L(M) \}
$$

We assume there exists an algorithm $A$ that decides $L_{\mathrm{U}}$. Then we construct an algorithm $B$ that decides $L_{\mathrm{union}}$. It consists of a subprogram $C$ that checks, if $x \in \{ 0,1,\# \}^{*}$ is of the correct form. If $x \not\in \{ M_{1}\#M_{2}\#w \mid M_{1}, M_{2}, w \in \Sigma^{*}_{\mathbb{B}}, M_{1} \in \mathrm{KodTM} \lor M_{2} \in \mathrm{KodTM}\}$, $B$ rejects.
