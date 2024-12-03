
# 11.4      Combining Proof Systems 

![[DMath-e-u11.pdf#page=2&rect=78,553,521,604|DMath-e-u11, p.2]]

## a) ![[DMath-e-u11.pdf#page=2&rect=106,462,522,551|DMath-e-u11, p.2]]

Let the following be the definitions of the set of proofs and verification function.
$$
\begin{align}
\mathcal{P}' &= \mathcal{P} \times \mathcal{P}  \\
\phi'(s', p') &= \begin{cases}
1, & \text{if $\phi(s_{i}, p_{j}) = 1$ for two statements} \\
0, &\text{else}
\end{cases}
\end{align}
$$

sound: no false statement can be proven (by construction) since underlying proof system is sound

complete: every true statement has a proof since underlying PS is complete




<div class="page-break" style="page-break-before: always;"></div>


## b) ![[DMath-e-u11.pdf#page=2&rect=106,310,521,452|DMath-e-u11, p.2]]









$$
\begin{align}
\mathcal{P}^{*} &= (\mathcal{S} \times \mathcal{P} ) \times \overline{\mathcal{P}} \\
\phi^{*}(s, p^{*}) &= \begin{cases}
1, & \text{if $\phi(\dot{s}, p) = 1$ and $\overline{\phi}((s, \dot{s}), \overline{p}) = 1$} \\
0, & \text{else}
\end{cases} &\text{where $p^{*} = ((\dot{s}, p), \overline{p})$ with $\dot{s} \in \mathcal{S}$ and $\overline{p} \in \overline{\mathcal{P}}$}
\end{align}
$$



