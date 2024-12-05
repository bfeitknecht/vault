
# 11.4      Combining Proof Systems 

![[DMath-e-u11.pdf#page=2&rect=78,553,521,604|DMath-e-u11, p.2]]

## a) ![[DMath-e-u11.pdf#page=2&rect=106,462,522,551|DMath-e-u11, p.2]]

Let the following be the definitions of the set of proofs and verification function. For notational convenience let $\mathcal{S}' =\mathcal{S} \times \mathcal{S} \times \mathcal{S} = \{  s' = (s_{1}, s_{2}, s_{3}) \mid s_{1}, s_{2}, s_{2} \in \mathcal{S} \}$ denote the set of triples of statements $s_{i}  \in \mathcal{S}$considered in this proof system.
$$
\begin{align}
\mathcal{P}' &= \mathcal{P} \times \mathcal{P}  \\
\phi'(s', p') = 1 &\iff \text{$\phi(s_{i}, p_{j}) = 1$ for two distinct $i_{1}, i_{2} \in [3]$ where $p' = (p_{1}, p_{2})$} &\text{(a)}
\end{align}
$$

Then we show that the described proof system $\Sigma'$ is sound and copmlete. First, let's cover its soundness.

Assume for some statement $s' \in \mathcal{S}'$ there exists a valid proof $p' \in \mathcal{P}'$ with $\phi'(s', p') = 1$. Then, by definition of the verification function $\text{(a)}$, in the proof system $\Sigma$ two of the statements in $s' = (s_{1}, s_{2}, s_{3})$ can be verified by one of the two proofs in $p' = (p_{1}, p_{2})$. Note that these are not necessarily distinct, however this does not affect the result. Since $\Sigma$ is sound, two statements $s_{i_{1}}, s_{i_{2}} \in \mathcal{S}$ having a valid proof $p_{j_{1}}, p_{j_{2}} \in \mathcal{P}$ such that $\phi(s_{i_{1}}, p_{j_{1}}), \phi(s_{i_{2}}, p_{j_{2}}) = 1$ implies that the statements are true, i.e. $\tau(s_{i_{1}}), \tau(s_{i_{2}}) = 1$. Thus it follows that $\tau'(s') = 1$, by definition of $\Sigma'$. Then every statement with a valid proof is true and hence the proof system is sound.

Now to show that it is also complete. Let $s' \in \mathcal{S}'$ be an arbitrary true statement i.e. $\tau'(s') = 1$. Thus, by definition $\text{(a)}$ at least two statements in $s' = (s_{1}, s_{2}, s_{3})$ are true with $\tau(s_{i_{1}}), \tau(s_{i_{2}}) = 1$. Since $\Sigma$ is complete, every true statement has a valid proof. Let $p' = (p_{j_{1}}, p_{j_{2}}) \in \mathcal{P}'$ be a pair of valid proofs such that $\phi(s_{i_{1}}, p_{j_{1}}), \phi(s_{i_{2}}, p_{j_{2}}) = 1$. Then it follows that $\phi'(s', p') = 1$. Thus every true statement has a valid proof so $\Sigma'$ is complete.
$\square$

<div class="page-break" style="page-break-before: always;"></div>

## b) ![[DMath-e-u11.pdf#page=2&rect=106,310,521,452|DMath-e-u11, p.2]]

Let the set of proofs $\mathcal{P}^{*}$ and the verification function $\phi^{*} : \mathcal{S} \times \mathcal{P}^{*} \to \{ 0, 1 \}$ be defined as given below.
$$
\begin{align}
\mathcal{P}^{*} &= (\mathcal{S} \times \mathcal{P}) \times \overline{\mathcal{P}}\\
\phi^{*}(s_{1}, p^{*}) = 1 &\iff \text{$\phi(s_{2}, p) = 1$ and $\overline{\phi}((s_{1}, s_{2}), \overline{p}) = 1$ for $p^{*} = ((s_{2}, p), \overline{p})$} &\text{(b)}
\end{align}
$$

Proof that $\Sigma^{*}$ is correct and complete. Let's start with the former.

Assume for some $s_{1} \in \mathcal{S}$ there exists a valid proof $p^{*} \in \mathcal{P}^{*}$ such that $\phi^{*}(s_{1}, p^{*}) = 1$. By assumption it must hold that both conditions in the RHS of definition $\text{(b)}$ are satisfied. Thus we have $\phi(s_{2},p)=1 \iff \tau(s_{2}) =1$, since $\Sigma$ is sound. Furthermore, $\overline{\phi}((s_{1}, s_{2}), \overline{p}) \iff \overline{\tau}(s_{1}, s_{2}) = 1$ as $\overline{\Sigma}$ is also sound. By definition $(1)$ of the proof system $\overline{\Sigma}$, it must be that $\tau(s_{1}) = 0$, since exactly one of the statements can be true in $\Sigma$ and it's established that $\tau(s_{2}) = 1$. Thus it follows that for any statement $s_{1} \in \mathcal{S}$ for which there exists $p^{*} \in \mathcal{P}^{*}$ with $\phi^{*}(s_{1}, p^{*}) = 1$ it holds that $\tau^{*}(s_{1}) = 1 \iff \tau(s_{1}) = 0$. Hence $\Sigma^{*}$ is sound.

Now let's cover the latter. Assume $\tau^{*}(s_{1}) = 1 \iff \tau(s_{1}) = 0$ for an arbitrary $s_{1} \in \mathcal{S}$. Since $\Sigma$ is complete, under the assumption that there exists some statement $s_{2} \in \mathcal{S}$ with $\tau(s_{2}) = 1$ there exists a valid proof for it $p \in \mathcal{P}$ such that $\phi(s_{2}, p) = 1$. Additionally, since the proof system $\overline{\Sigma}$ is also complete, for some true statement in it, i.e. $(s_{1}, s_{2}) \in \mathcal{S}^{2}$ with, $\overline{\tau}(s_{1}, s_{2}) = 1$ there exists a valid proof $\overline{p} \in \overline{\mathcal{P}}$ for it such that $\overline{\phi}((s_{1}, s_{2}), \overline{p}) = 1$. Thus, for an arbitrary true statement $s_{1} \in \mathcal{S}$ in the proof system $\Sigma^{*}$, there exists a valid proof $p^{*} = ((s_{2}, p), \overline{p}) \in \mathcal{P}^{*}$ which satisfies $\phi^{*}(s_{1}, p^{*}) = 1$ by construction as above.

In the case where $\not\exists s_{2} \in \mathcal{S}$ such that $\tau(s_{2}) = 1$, then by definition there are only true statements in the proof system $\Sigma^{*}$. Thus the verification function accepts any proof for any statement $s_{1} \in S$. Again, since every true statement in $\Sigma^{*}$ has a proof it is complete.
$\square$
