---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w08.md]]"
next: "[[FMFP-v-w10.md]]"
slides:
  - "[[FMFP-s10-IMP.pdf]]"
  - "[[FMFP-s11-operational-semantics.pdf]]"
tags:
---


# Info
- "I was smiling so nicely for you but now it's too late."

# Topics
- deterministic semantics


# Notes
- big step semantics of `IMP` is deterministic
- allocation is non-deterministic
- realistic programming language not deterministic
- structural induction for statements $\mathsf{Stm}$ ==incorrect== to prove determinism of `IMP`
$$
\begin{align}
& \mathrm{if} = \texttt{if $\mathsfit{b}$ then $\mathsfit{s}_{1}$ else $\mathsfit{s}_{2}$ end} \\
& \mathrm{while} = \texttt{while $\mathsfit{b}$ do $\mathsfit{s}$ end} \\
& \Gamma' = \Gamma, P(\mathsfit{s}_{1}), P(\mathsfit{s}_{2}) \\
& \Gamma'' = \Gamma, P(\mathsfit{s}) \\
\\ &
\begin{prooftree}
\AXC{$\Gamma \vdash P(\texttt{skip})$}
\AXC{$\Gamma \vdash P(\texttt{$\mathsfit{x}$ := $\mathsfit{e}$} )$}
\AXC{$\Gamma' \vdash P(\texttt{$\mathsfit{s}_{1}$; $\mathsfit{s}_{2}$} )$}
\AXC{$\Gamma' \vdash P(\mathrm{if})$}
\AXC{$\Gamma'' \vdash P(\mathrm{while})$}
\RL{${\ \mathrm{Stm}\ \ast}$}
\QuinaryInfC{$\Gamma \vdash \forall \mathsfit{s}. P(\mathsfit{s}) $}
\end{prooftree}
\\ \\
\ast &\quad \mathsfit{x}, \mathsfit{e}, \mathsfit{b}, \mathsfit{s}, \mathsfit{s}_{1}, \mathsfit{s}_{2} \not\in \mathrm{free}(\Gamma) \\
\end{align}
$$
- instead use induction on shape of derivation tree
- because derivation trees are finite, noetherian order exists, corresponding to strict subtrees
