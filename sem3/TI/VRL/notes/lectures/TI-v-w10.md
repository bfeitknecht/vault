
- savitch's theorem (non-deterministic space complexity is at most square deterministic space complexity)
- reachable procedure

# Notes

$\mathrm{DLOG} \subseteq \mathrm{NLOG} \subseteq \mathrm{P} \subseteq \mathrm{NP} \subseteq \mathrm{PSPACE} = \mathrm{NPSPACE} \subseteq \mathrm{EXPTIME}$

the following strict subset inclusions are known to hold

$\mathrm{DLOG} \subsetneq \mathrm{PSPACE}$ and $\mathrm{P} \subsetneq \mathrm{EXPTIME}$

- $\mathrm{P}$ can be understood as finding a proof
- $\mathrm{NP}$ can be understood as verifying a proof



Let $s : \mathbb{N} \to \mathbb{N}$ be space-constructible. Then for a MTM $M$ that decides any word $w \in L(M)$ with $\mathrm{Space}_{M}(w) \leq s(|w|)$, we can construct a MTM $A$ that decides any word $x \in \Sigma^{*}$ with the given space constriction. Proof idea: write a delimiter symbol on the input tape at position $s(|x|)$, if we reach it during computation on $x$, we reject since we know it can't be in the language anyway.

Similarly for time-constructible, although it takes twice the time. Work backwards. First we have to write the symbol on the working tape and then compute.

___

Asymptotic notation helps us analyze the behavior of functions for very large values.
$$
\begin{align}
O(f) &= \{ g : \mathbb{N} \to \mathbb{R}_{+} \mid \exists N,c \in \mathbb{N} . \forall n \geq N : g(n) \leq c \cdot f (n) \} \\
\Omega(f) &= \{   g : \mathbb{N}  \to \mathbb{R}_{+} \mid \exists N, c \in \mathbb{N}. \forall n \geq N : c \cdot g(n) \geq f(n)  \} \\
\Theta(f) &= O(f) \cap \Omega(f)
\end{align}
$$


Let $M$ be a MTM that always halts, where $C = (K_{i})_{l}$ is the computation of $M$ on $x \in \Sigma_{M}^{*}$.

- time complexity of $M$ on input $x$:		$\mathrm{Time}_{M}(x) = l - 1$
- time complexity *function* of $M$:		$\mathrm{Time}_{M}(n) = \max\{ \mathrm{Time}_{M}(x) \mid x \in \Sigma_{M}^{n} \}$

Let $M$ be a kMTM, where $K = (q, x, i, \alpha_{1}, i_{1}, \dots, \alpha_{k}, i_{k})$ is a configuration with $i \leq |x| + 1$ and $i_{j} \leq |\alpha_{j \in [k]}|$. Let $C = (K_{i})_{l}$ be the computation of $M$ on the input $x$ as a sequence of configurations.

- space complexity of $K$:				$\mathrm{Space}_{M}(K) = \max\{ |\alpha_{i}| \mid i \in [k] \}$
- space complexity of $M$ on input $x$:		$\mathrm{Space}_{M}(x) = \max\{ \mathrm{Space}_{M}(K_{i}) \mid i \in l \}$
- space complexity *function* of $M$:		$\mathrm{Space}_{M}(n) = \max\{ \mathrm{Space}_{M}(x) \mid x \in \Sigma_{M}^{n} \}$

Notably, the time complexity does not depend on the number of tapes and the space complexity does not depend on the input length.


The deterministic complexity classes for functions $f, g : \mathbb{N} \to \mathbb{R}_{+}$ are given below. Let $A, B$ be deterministic MTM.
$$
\begin{align}
\mathrm{TIME}(f) &= \{  L(A) \mid \mathrm{Time}_{A}(n) \in O(f) \} \\
\mathrm{SPACE}(g) &= \{ L(B) \mid \mathrm{Space}_{B}(n) \in O(g) \} \\
 \\
\mathrm{L} &= \mathrm{SPACE}(\log_{2}n) \\
\mathrm{P} &=  \bigcup_{c \in \mathbb{N}} \mathrm{TIME}(n^{c}) \\
\mathrm{PSPACE} &= \bigcup_{c \in \mathbb{N}} \mathrm{SPACE}(n^{c}) \\
\mathrm{EXPTIME} &= \bigcup_{d \in \mathbb{N}} \mathrm{TIME}(2^{n^{d}})
\end{align}
$$

**Lemma 6.3.** for every function $t : \mathbb{N} \to \mathbb{R}_{+}$ it holds that $\mathrm{TIME}(t) \subseteq \mathrm{SPACE}(t)$. Proof. Every MTM $M$ can at most write $\mathrm{Time}_{M}(n)$ symbols on its working tapes. Thus it follows that $\mathrm{Space}_{M}(n) \leq \mathrm{Time}_{M}(n)$.


**Definition 6.6.** A function $s : \mathbb{N} \to \mathbb{N}$ is called space constructible if it is *monotone* and $s(n) \geq \log_{2}(n+1)$. Formally, if there exists 1-MTM $A$ such that the following holds, $s$ is space constructible.
1. $\mathrm{Space}_{A}(n) \geq s(n)$, the space complexity is bounded by $s$
2. $\forall n \in \mathbb{N}, x = 0^{n} : A(x) \text{ generates } 0^{s(n)} \text{ on working tape and accepts}$

Furthermore, a function $t : \mathbb{N} \to \mathbb{N}$ is called time constructible, if it is *monotone* and  $t(n) \geq n$. Formally, if there exists a MTM $B$ such that the below holds.
1. $\mathrm{Time}_{B}(n) \in O(t)$, the time complexity is bounded by $t$
2. $\forall n \in \mathbb{N}, x = 0^{n} : B(x) \text{ generates } 0^{n} \text{ on its first working tape and accepts}$

**Lemma 6.5., Lemma 6.4.** Let $s, t$ be a space and a time constructible function respectively. Let $A, B$ be MTM with $\mathrm{Space}_{A}(n) \leq s(|x|)$ and $\mathrm{Time}_{B}(n) \leq t(|x|)$ for all words $x \in L(A), L(B)$. Then there exist MTM $A', B'$ that accept the same language and halt on every input, i.e. the space and time complexity is totally bounded, $\mathrm{Space}_{A'}(n) \leq s(n)$ and $\mathrm{Time}_{B'}(n) \in O(t)$. Proof.
1. $A'$ constructs $s(|x|)$, writes special symbol at that position on all tapes and rejects if any working tape wants to advance
2. $B'$ constructs $t(|x|)$ on additional tape and if computation takes longer, abort and reject


**Theorem 6.2.** For every function $s$ with $s(n) \geq \log_{2}n$ the following holds.
$$
\mathrm{SPACE}(s) \subseteq \bigcup_{c \in \mathbb{N}} \mathrm{TIME}(c^{s(n)})
$$
Proof. Upper bound on inner configurations.


The non-deterministic complexity classes are as follows. Let $A, B$ be NMTM.
$$
\begin{align}
\mathrm{NTIME} &= 
\end{align}
$$
