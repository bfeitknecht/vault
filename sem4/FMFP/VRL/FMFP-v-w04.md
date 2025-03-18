---
module: "[[FMFP]]"
prev: "[[FMFP-v-w03]]"
next: "[[FMFP-v-w05]]"
---


# Info
- favorite lambda type, `() :: ()`


# Topics
- formal induction
- well ordering of natural numbers
- algebraic data types
- types, terms, expressions

# Notes
- type judgment derivation rules correspond with propositional logic
	- $\mathrm{Tup} \sim \land_{I}$, tuple construction with conjunction introduction
	- $\mathrm{App} \sim\; \to_{I}$, lambda application with implication introduction
	- $\mathrm{Abs} \sim\; \to_{E}$, lambda abstraction with implication elimination
	- $\mathrm{Var} \sim\mathrm{Ax}$, variable with axiom
	- 

## Type Judgment
- $t :: \tau$ corresponds to the term $t$ having type $\tau$, i.e. `typeof` operator $\sim$ `==`
- $x_{i} : \tau_{i}$ corresponds to a binding of variable $x_{i}$ to type $\tau_{i}$, i.e. binding operator $\sim$ `:=`

## Typing Rules
$$
\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{Var}}$}
\UIC{$\Gamma, t : \tau \vdash t :: \tau$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{}
\RL{$\ \mathrm{Type}$}
\UIC{$\Gamma \vdash v :: \tau$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma \vdash t :: \tt{Int}$}
\RL{${\ \tt{zero}}$}
\UIC{$\Gamma \vdash (\mathrel{\tt{zero}} t) :: \tt{Bool}$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash t_{1} :: \tt{Int}$}
\AXC{$\Gamma \vdash t_{2} :: \tt{Int}$}
\RL{${\ \mathtt{op} \in \{ +, -, *\}}$}
\BIC{$\Gamma \vdash (t_{1} \mathrel{\tt{op}} t_{2}) :: \tt{Int}$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma \vdash t_{0} :: \tt{Bool}$}
\AXC{$\Gamma \vdash t_{1} :: \tau$}
\AXC{$\Gamma \vdash t_{2} :: \tau$}
\RL{${\ \texttt{if-else}}$}
\TIC{$\Gamma \vdash (\mathrel{\tt{if}} t_{0} \mathrel{\tt{then}} t_{1} \mathrel{\tt{else}} t_{2}) :: \tau$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma \vdash t_{1} :: \tau_{1}$}
\AXC{$\Gamma \vdash t_{2} :: \tau_{2}$}
\RL{${\ \mathrm{Tuple}}$}
\BIC{$\Gamma \vdash (t_{1}, t_{2}) :: (\tau_{1}, \tau_{2})$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash t :: (\tau_{1}, \tau_{2})$}
\RL{${\ \tt{fst}}$}
\UIC{$\Gamma \vdash \mathop{\tt{fst}} t :: \tau_{1}$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash t :: (\tau_{1}, \tau_{2})$}
\RL{${\ \tt{snd}}$}
\UIC{$\Gamma \vdash \mathop{\tt{snd}} t :: \tau_{2}$}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\Gamma, x : \sigma \vdash t :: \tau$}
\RL{${\ \mathrm{Abs}^{*}}$}
\UIC{$\Gamma \vdash (\lambda x.t)  :: \sigma \to \tau$}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{$\Gamma \vdash t_{1} :: \sigma \to \tau :: \tau$}
\AXC{$\Gamma \vdash t_{2} :: \sigma$}
\RL{${\ \mathrm{App}}$}
\BIC{$\Gamma \vdash (t_{1} \ \  t_{2})  :: \tau$}
\end{prooftree}
\\ \\
\ast &\quad x \not\in \Gamma
\end{align}
$$