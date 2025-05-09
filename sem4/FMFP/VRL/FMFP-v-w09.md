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
- extensions to `IMP`
- transition system
- operational semantics


# Notes
- big step semantics of `IMP` is deterministic
- allocation is non-deterministic
- realistic programming language not deterministic
- structural induction over $\mathsf{Stm}$ ==insufficient== to prove determinism of `IMP`
$$
\begin{align}
&
\begin{prooftree}
\AXC{$\begin{align} & \Gamma \vdash P(\texttt{skip} ) \\ & \Gamma \vdash P(\texttt{\(x\) := \(e\)}) \\ & \Gamma, P(s), P(s') \vdash P(\texttt{\(s\); \(s'\)}) \\ & \Gamma, P(s), P(s') \vdash P(\texttt{if \(b\) then \(s\) else \(s'\) end}) \\ & \Gamma, P(s) \vdash P(\texttt{while \(b\) do \(s\) end}) \\ \end{align}$}
\RL{${\ \mathrm{Stm}\ \ast}$}
\UIC{$\Gamma \vdash \forall s. P(s) $}
\end{prooftree}
\\ \\
\ast &\quad x, e, b, s, s' \not\in \mathrm{free}(\Gamma) \\
\end{align}
$$
- instead use induction on (shape) of derivation tree
- because derivation trees are finite, noetherian order corresponding to strict subtrees exists
- local variable declaration needs to restore prior state after execution of statement
$$
\begin{align}
&
\begin{prooftree}
\AXC{$\langle s, \sigma[x \mapsto \mathcal{A} [\![ e ]\!]  \sigma] \rangle \to \sigma' $}
\RL{${\ \mathrm{Local}}$}
\UIC{$\langle \texttt{var $x$ := $e$ in $s$ end}, \sigma  \rangle \to \sigma'[x \to \sigma(x) ] $}
\end{prooftree}
\end{align}
$$
- procedure declaration requires formal parameter names to be distinct
- procedure call requires "return" variable parameters to be distinct (no aliasing)
```IMP
procedure p(; a, b)
begin
	a := 1
	print b
	b := 2
end;

var x := 3 in
	p(; x, x)
end
```
- natural semantics (big-step) analyze programs as a whole (statements form atomic execution granularity)
	- how the overall result is obtained
- operational semantics (small-step) analyze what happens "within" the execution
	- how individual "steps" of computation take place
	- uses transition system to model step
	- allows judgment over non-terminating programs and where order of execution matters
$$
\overset{\huge \mathrm{Operational}}{\boxed{\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{Skip}}$}
\UIC{$\langle \texttt{skip}, \sigma  \rangle \to_{1} \sigma $}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{}
\RL{$\ \mathrm{Assign}$}
\UIC{$\langle \texttt{$x$ := $e$}, \sigma  \rangle \to_{1} \sigma [ x \mapsto \mathcal{A}[\![ e]\!]  \sigma] $}
\end{prooftree}
\\ \\ 
&
\begin{prooftree}
\AXC{$\langle s, \sigma \rangle \to_{1} \sigma'$}
\RL{${\ \mathrm{Seq_{1}}}$}
\UIC{$\langle \texttt{$s$; $s'$}, \sigma \rangle \to_{1} \langle s', \sigma' \rangle $}
\end{prooftree}
\quad \begin{prooftree}
\AXC{$\langle s, \sigma \rangle \to_{1} \langle s'', \sigma' \rangle $}
\RL{${\ \mathrm{Seq_{+}}}$}
\UIC{$\langle \texttt{$s$; $s'$}, \sigma \rangle \to_{1} \langle \texttt{$s''$; $s'$}, \sigma' \rangle $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{}
\RL{${\ \text{If $\ast$}}$}
\UIC{$\langle \texttt{if $b$ then $s$ else $s'$ end}, \sigma \rangle \to_{1} \langle s, \sigma \rangle $}
\end{prooftree}
\qquad\begin{prooftree}
\AXC{}
\RL{${\ \text{Else $\ast\ast$}}$}
\UIC{$\langle \texttt{if $b$ then $s$ else $s'$ end}, \sigma \rangle \to_{1} \langle s', \sigma \rangle $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{}
\RL{${\ \text{While}}$}
\UIC{$ \begin{align}
\langle &\texttt{while $b$ do $s$ end}, \sigma \rangle \to_{1} \\
\langle &\texttt{if $b$ then ($s$; while $b$ do $s$ end) else skip end}, \sigma \rangle
\end{align} $}
\end{prooftree}
\\ \\
\ast &\quad \mathcal{B}[\![  b]\!] \sigma = \mathrm{True} \\
\ast\ast &\quad \mathcal{B}[\![  b]\!] \sigma = \mathrm{False}
\end{align}}}
$$
