
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315

# 22

Prove that the language below is not recursive by providing an explicit mapping reduction and proving its correctness.
$$
L_{\mathrm{reach}} = \{ \mathrm{Kod}(M)\#0^{i} \mid i \in \mathbb{N}, |Q_{M}| \geq i+1, \exists x \in \Sigma_{M}^{*} \}
$$

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

Hence we have proven that $L_{\mathrm{all}}$ is a semantically non-trivial decision problem of TMs.


Since $M_{\varnothing} \not\in L_{\mathrm{all}}$, with $L(M_{\varnothing})=\varnothing$ we construct a TM $S$ that realizes the reduction $L_{\mathrm{H}, \lambda} \leq_{\mathrm{EE}} L_{\mathrm{all}}$. Per non-triviality of $L_{\mathrm{all}}$, let $\widetilde{M}$ be a TM such that $\mathrm{Kod}(\widetilde{M}) \in L_{\mathrm{all}}$, which exists per definition 5.7. Then for an input $x \in \Sigma^{*}_{\mathbb{B}}$ the TM $S$ first checks if it's a valid encoding of a TM. If this isn't the case, i.e. $x \not\in \mathrm{KodTM}$, it outputs $S(x) = \mathrm{Kod}(M_{\varnothing})$. Otherwise, $x=\mathrm{Kod}(M) \in \mathrm{KodTM}$ and we have $S(x) = \mathrm{Kod}(A)$, where $A$ is defined as follows.

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

