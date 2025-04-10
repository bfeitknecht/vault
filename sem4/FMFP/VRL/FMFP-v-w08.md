---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w07.md]]"
next: "[[FMFP-v-w09.md]]"
slides:
  - "[[FMFP-s09-formal-methods.pdf]]"
  - "[[FMFP-s10-IMP.pdf]]"
  - "[[FMFP-s11-operational-semantics.pdf]]"
---
 

# Info
- "Formal methods give you an edge."


# Topics
- formal semantics
- undefined behavior
- imperative language `IMP`
- semantic evaluation function
- [[transition system]]
- natural semantics of `IMP`


# Notes
- formal semantics non-trivial
- optimizations might be incorrect for expressions with side-effect
- imperative language `IMP`
```haskell
-- IMP syntax definition

type Var = String -- identifier
type Numeral = Integer -- unbounded numerals

-- arithmetic expression
data Aexp = Bin Op Aexp Aexp
	| Var
	| Numeral

-- arithmethic operation
data Op = Add | Sub | Mul

-- boolean expression
data Bexp = Or Bexp Bexp
	| And Bexp Bexp
	| Not Bexp
	| Rel Rop Aexp Aexp

-- relation operation
data Rop = Eq | Neq | Lt | Leq | Gt | Geq

-- statement
data Stm = Skip
	| Assign Var Aexp
	| Seq Stm Stm
	| If Bexp Stm Stm
	| While Bexp Stm
```

- semantic evaluation functions
	- meta variables, for arbitrary values of types
	- designated constant zero state, where all variables are zero
	- state function assigns to every variable a value, i.e. every variable is always initialized
	- arithmetic expression function maps syntactic operation to semantic "mathematical" interpretation
$$
\begin{align}
\mathcal{N} &: \mathsf{Numeral} \to \mathsf{Val} \\
\mathsf{State} &: \mathsf{Var} \to \mathsf{Val} \\
\mathcal{A} &: \mathsf{Aexp} \to \mathsf{State} \to \mathsf{Val} \\
\mathcal{B} &: \mathsf{Bexp} \to \mathsf{State} \to \mathsf{Bool}
\end{align}
$$
- there are no side effects in `IMP`
- evaluation of expressions can never fail
- expressions always terminate
- totality of semantic functions by structural induction over domains
- free variables
- syntactic sugar for `IMP`
	- shortcut `if b then s end`, boolean constants `true`, `false`
- inference rules for natural semantics of `IMP`
$$
\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{Skip}}$}
\UIC{$\langle \texttt{skip}, \sigma  \rangle \to \sigma $}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{}
\RL{$\ \mathrm{Assign}$}
\UIC{$\langle \texttt{$\mathsfit{x} := \mathsfit{e} $}, \sigma  \rangle \to \sigma [ \mathsfit{x} \mapsto \mathcal{A}[\![ \mathsfit{e}]\!]  \sigma] $}
\end{prooftree}
\\ \\ 
&
\begin{prooftree}
\AXC{$\langle \mathsfit{s}, \sigma \rangle \to \sigma'$}
\AXC{$\langle \mathsfit{s'}, \sigma' \rangle \to \sigma''$}
\RL{${\ \mathrm{Seq}}$}
\BIC{$\langle \texttt{$\mathsfit{s}$; $\mathsfit{s'}$}, \sigma \rangle \to \sigma'' $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\langle \mathsfit{s}, \sigma \rangle \to \sigma'$}
\RL{${\ \text{If $\ast$}}$}
\UIC{$\langle \texttt{if $\mathsfit{b}$ then $\mathsfit{s}$ else $\mathsfit{s'}$ end}, \sigma \rangle \to \sigma' $}
\end{prooftree}
\qquad\begin{prooftree}
\AXC{$\langle \mathsfit{s'}, \sigma \rangle \to \sigma'$}
\RL{${\ \text{Else $\ast\ast$}}$}
\UIC{$\langle \texttt{if $\mathsfit{b}$ then $\mathsfit{s}$ else $\mathsfit{s'}$ end}, \sigma \rangle \to \sigma' $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\langle \mathsfit{s}, \sigma \rangle \to \sigma'$}
\AXC{$ \langle \texttt{while $\mathsfit{b}$ do $\mathsfit{s}$ end}, \sigma'  \rangle \to \sigma''$}
\RL{${\ \text{While $\ast$}}$}
\BIC{$\langle \texttt{while $\mathsfit{b}$ do $\mathsfit{s}$ end}, \sigma \rangle \to \sigma'' $}
\end{prooftree}
\qquad\begin{prooftree}
\AXC{}
\RL{${\ \text{End $\ast\ast$}}$}
\UIC{$\langle \texttt{while $\mathsfit{b}$ do $\mathsfit{s}$ end}, \sigma \rangle \to \sigma $}
\end{prooftree}
\\ \\
\ast &\quad \mathcal{B}[\![ \mathsfit{b}]\!] \sigma = \mathrm{T} \\
\ast\ast &\quad \mathcal{B}[\![ \mathsfit{b}]\!] \sigma = \mathrm{F}
\end{align}
$$
- if there exists a finite derivation tree of rule applications resulting in a transition, then that can be written $\vdash \langle \mathsfit{s}, \sigma \rangle \to \sigma' \iff \exists T.\rho(T) \equiv \langle \mathsfit{s}, \sigma \rangle \to \sigma'$
- build up derivation tree from bottom until reach axioms, then top down to fill in states
- statements do not necessarily terminate, `while true do skip end`
- 