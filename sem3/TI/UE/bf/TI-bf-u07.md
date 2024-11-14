
# 19 ![[TI-e-u07.pdf#page=1&rect=67,518,527,566|TI-e-u07, p.1]]

We show that $L'_{\mathrm{diag}} \leq_{\mathrm{EE}} L_{\mathrm{H}}$, since this directly implies what is to prove $L'_{\mathrm{diag}} \leq_{\mathrm{R}} L_{\mathrm{H}}$. 


First, let's recall the definition of the halting language.
$$
L_{\mathrm{H}} = \{ \mathrm{Kod}(M)\#x \in \Sigma^{*}_{\mathbb{B}} \mid \mathrm{Halts}(M, x) \}
$$

Now, assume there exists an algorithm (TM that always halts) $A$ that decides $L_{\mathrm{H}}$. Then, we construct an algorithm $B$ that decides the given language $L'_{\mathrm{diag}}$ with the help of $A$. First, the subprogram TM $C$ tests, whether or not the input word $x = w_{j}$ is of the correct form, i.e. it has an even index $j = 2i$ for some $i \in \mathbb{N}$ in the canonical order of words over $\{ 0,1 \}$. If it isn't, $B$ rejects the input word $x$ immediately.

Otherwise, it $C $computes the $i$-th TM $\mathrm{Kod}(M_{i})$ with the totally recursive function $\mathrm{Gen}$, which exists per lemma 4.3. Then, it constructs a turing machine $M'$ from $\mathrm{Kod}(M_{i})$ that simulatwith the modification, that any state that transitions to the accepting state $q_{\checkmark}$ instead enters an infinite loop. 

![[TI-e-u07-19.png]]


<div class="page-break" style="page-break-before: always;"></div>

# 20 ![[TI-e-u07.pdf#page=1&rect=66,406,529,456|TI-e-u07, p.1]]
Prove the following statements.

## (a) $L_{\text{union}} \in \mathcal{L}_{\mathrm{RE}}$

Per subtask (c), we have constructed a TM $B$ that reduces $L_{\mathrm{union}}$ to $L_{\mathrm{U}}$. 

such that $L(M) = L_{\mathrm{union}}$. Then per definition of $\mathcal{L}_{\mathrm{RE}}$ we have $L_{\mathrm{union}} \in \mathcal{L}_{\mathrm{RE}}$.

## (b) $L_{\mathrm{U}} \leq_{\mathrm{EE}} L_{\text{union}}$



## (c) $L_{\text{union}} \leq_{\mathrm{EE}} L_{\mathrm{U}}$


$\square$