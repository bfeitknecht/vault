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
module IMP where
    type Var = String         -- identifier
    type Numeral = Integer    -- unbounded numerals
    
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
        | True        -- syntactic abbreviation for 1 = 1
        | False        -- syntactic abbreviation for 1 # 1
    
    -- relation operation
    data Rop = Eq    -- =
        | Neq        -- #
        | Lt        -- <
        | Leq        -- <=
        | Gt        -- >
        | Geq        -- >=
    
    -- statement
    data Stm = Skip            -- skip
        | Assign Var Aexp    -- x := e
        | Seq Stm Stm        -- (s; s')
        | If Bexp Stm Stm    -- if b then s else s' end
        | While Bexp Stm    -- while b do s end
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
\overset{\huge \mathrm{Natural}}{\boxed{\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{Skip}}$}
\UIC{$\langle \texttt{skip}, \sigma  \rangle \to \sigma $}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{}
\RL{$\ \mathrm{Assign}$}
\UIC{$\langle \texttt{$x$ := $e$}, \sigma  \rangle \to \sigma [ x \mapsto \mathcal{A}[\![ e]\!]  \sigma] $}
\end{prooftree}
\\ \\ 
&
\begin{prooftree}
\AXC{$\langle s_{1}, \sigma \rangle \to \sigma'$}
\AXC{$\langle s_{2}, \sigma' \rangle \to \sigma''$}
\RL{${\ \mathrm{Seq}}$}
\BIC{$\langle \texttt{$s_{1}$; $s_{2}$}, \sigma \rangle \to \sigma'' $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\langle s_{1}, \sigma \rangle \to \sigma'$}
\RL{${\ \text{If $\ast$}}$}
\UIC{$\langle \texttt{if $b$ then $s_{1}$ else $s_{2}$ end}, \sigma \rangle \to \sigma' $}
\end{prooftree}
\qquad\begin{prooftree}
\AXC{$\langle s_{2}, \sigma \rangle \to \sigma'$}
\RL{${\ \text{Else $\ast\ast$}}$}
\UIC{$\langle \texttt{if $b$ then $s_{1}$ else $s_{2}$ end}, \sigma \rangle \to \sigma' $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$\langle s, \sigma \rangle \to \sigma'$}
\AXC{$ \langle \texttt{while $b$ do $s$ end}, \sigma'  \rangle \to \sigma''$}
\RL{${\ \text{While $\ast$}}$}
\BIC{$\langle \texttt{while $b$ do $s$ end}, \sigma \rangle \to \sigma'' $}
\end{prooftree}
\qquad\begin{prooftree}
\AXC{}
\RL{${\ \text{End $\ast\ast$}}$}
\UIC{$\langle \texttt{while $b$ do $s$ end}, \sigma \rangle \to \sigma $}
\end{prooftree}
\\ \\
\ast &\quad \mathcal{B}[\![  b]\!] \sigma = \mathrm{True} \\
\ast\ast &\quad \mathcal{B}[\![ b]\!] \sigma = \mathrm{False}
\end{align}}}
$$
- $\vdash \langle s, \sigma \rangle \to \sigma' \iff \exists T.\mathrm{root}(T) \equiv \langle s, \sigma \rangle \to \sigma'$, there exists a finite derivation tree $T$ of rule applications, i.e. configuration $\langle s, \sigma \rangle$$s$ terminates in state $\sigma'$
- build up derivation tree from bottom until reach axioms, then top down to fill in states
- statements do not necessarily terminate, i.e. `while true do skip end`
- meta-variables in $math$, program variables in $\texttt{typewriter}$
$$
\begin{align}
n &\in \mathsf{Numeral} \\
x, y, z &\in \mathsf{Var}  \\
e, e', \dots &\in \mathsf{Aexp} \\
b, b', \dots &\in \mathsf{Bexp} \\
s, s' , \dots &\in \mathsf{Stm}
\end{align}
$$
