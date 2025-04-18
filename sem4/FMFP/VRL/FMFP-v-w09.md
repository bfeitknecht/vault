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
