---
module: "[[FMFP]]"
prev: "[[FMFP-v-w02]]"
next: "[[FMFP-v-w03]]"
---


# Info
"syntactic sugar causes semantic cancer"


# Topics
- $\alpha$-conversion
- validity and satisfiability of first order logic
- universal quantification
- structure
- interpretation
- formal induction proof
- list types in haskell `(x:xs)`


# Notes
- $\forall-I$ universal quantifier introduction requires $x$ not free in any assumption in $\Gamma$
- patterns cannot have function evaluations
- patterns are linear, no duplicate variables (except wildcard `_`)


## Precedence of Propositional Logic Operations

| Operation | Associativity |
| --------- | ------------- |
| $\lnot$   | right         |
| $\land$   | left          |
| $\lor$    | left          |
| $\to$     | right         |


## Natural Deduction
The following are rules for natural deduction in intuitionistic predicate logic.
$$
\overset{\huge \text{Natural Deduction}}{\boxed{\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{AXIOM}}$}
\UIC{$\Gamma, A \vdash A$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash \bot$}
\RL{$\ \cancel{ \bot }$}
\UIC{$\Gamma \vdash A$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma, A \vdash B$}
\RL{${\ \to}$}
\UIC{$\Gamma \vdash A \to B$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash A \to B$}
\AXC{$\Gamma \vdash A$}
\RL{${\ \cancel{ \to }}$}
\BIC{$\Gamma \vdash B$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma, A \vdash \bot$}
\RL{${\ \lnot}$}
\UIC{$\Gamma \vdash \lnot A$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash \lnot A$}
\AXC{$\Gamma \vdash A$}
\RL{${\ \cancel{ \lnot }}$}
\BIC{$\Gamma \vdash B$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma \vdash A$}
\AXC{$\Gamma \vdash B$}
\RL{${\ \land}$}
\BIC{$\Gamma \vdash A \land B$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash A \land B$}
\RL{${\ \cancel{ \land }_{l}}$}
\UIC{$\Gamma \vdash A$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash A \land B$}
\RL{${\ \cancel{ \land }_{r}}$}
\UIC{$\Gamma \vdash B$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma \vdash A$}
\RL{${\ \lor_{l}}$}
\UIC{$\Gamma \vdash A \lor B$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash B$}
\RL{${\ \lor_{r}}$}
\UIC{$\Gamma \vdash A \lor B$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash A \lor B$}
\AXC{$\Gamma, A \vdash C$}
\AXC{$\Gamma, B \vdash C$}
\RL{${\ \cancel{ \lor }}$}
\TIC{$\Gamma \vdash C$}
\end{prooftree}
\\ \\ 
&
\begin{prooftree}
\AXC{$\Gamma \vdash A$}
\RL{${\ \forall^{*}}$}
\UIC{$\Gamma \vdash \forall x.A$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash \forall x.A$}
\RL{${\ \cancel{ \forall }}$}
\UIC{$\Gamma \vdash A[x \mapsto t]$}
\end{prooftree}
\\ \\ 
&
\begin{prooftree}
\AXC{$\Gamma \vdash A[x \mapsto t]$}
\RL{${\ \exists}$}
\UIC{$\Gamma \vdash \exists x.A$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash \exists x.A$}
\AXC{$\Gamma, A \vdash B$}
\RL{${\ \cancel{ \exists^{\ast \ast} }}$}
\BIC{$\Gamma \vdash B$}
\end{prooftree}
\\ \\ \\
\ast & \quad \forall \phi \in \Gamma. x \not\in \mathrm{free}(\phi) \\
\ast \ast & \quad \forall \psi \in (\Gamma \cup B). x \not\in \mathrm{free}(\psi)
\end{align}}}
$$
