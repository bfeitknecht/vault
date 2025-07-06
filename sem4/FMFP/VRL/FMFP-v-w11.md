---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w10.md]]"
next: "[[FMFP-v-w12.md]]"
tags:
slides:
  - "[[FMFP-s12-axiomatic-semantics.pdf]]"
---


# Info
- exam relevant topics only up to structural semantics, without axiomatic semantics

# Topics
- axiomatic semantics
- hoare triple
- partial correctness
- termination
- total correctness

# Notes
- hoare triple $\{  \mathbf{P} \} \ s \ \{  \mathbf{Q} \}$
- logical variables are only used in assertions and allow reference across pre- and post-condition
    - substitution lemma holds, $\mathcal{B}[\![\mathbf{P}[x \mapsto e]]\!]\sigma = \mathcal{B}[\![\mathbf{P}]\!]\sigma[x \mapsto \mathcal{A}[\![e]\!]\sigma]$
    - applying $\texttt{skip}$ rule requires ==**syntactic** equivalence== of assertions, thus use
        - $\mathbf{P} \vDash \mathbf{Q} \iff \forall \sigma.\mathcal{B}[\![\mathbf{P}]\!]\sigma= \mathrm{True} \to \mathcal{B}[\![\mathbf{Q}]\!]\sigma = \mathrm{True}$
        - i.e. **semantic** consequence of assertions
        - may strengthen preconditions and weaken postconditions, in diagram $\uparrow \circ \rightarrow \circ \downarrow$
        - build proof outlines bottom-up
- total correctness hoare triple $\{  \mathbf{P} \} \ s \ \{ \Downarrow  \mathbf{ Q}\}$
    - partial correctness and total correctness hoare triples form independent systems, don't mix!
    - arithmetic expressions as loop variant, provides upper bound on number of iterations
    - need to be made on well-founded set
    - if an assertion is both pre- and post-condition, no downarrow necessary
- $\vdash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \} \iff \exists T.\mathrm{root(T) \equiv \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \}}$
    - property can be proven (exists derivation tree with triple as root)
- $\vDash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \} \iff \forall \sigma, \sigma'. \mathcal{B}[\![\mathbf{P}]\!]\sigma \land \vdash \langle s, \sigma \rangle \to \sigma' \implies \mathcal{B}[\![\mathbf{Q}]\!]\sigma'$
    - property is true (for all states, precondition in initial state implies postcondition in state after execution)
- $\vdash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \} \implies \vDash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \}$, if a property can be proven, it is correct (soundness)
- $\vDash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \} \implies \vdash \{  \mathbf{P} \}\ s \ \{ \mathbf{Q} \}$, if a property is true, it can be proven (completeness)
$$
\overset{\huge \mathrm{Hoare}}{\boxed{\begin{align}
&
\begin{prooftree}
\AXC{}
\RL{${\ \mathrm{Skip}}$}
\UIC{$ \{ \mathbf{P} \} \ \texttt{skip} \ \{ \mathbf{P} \} $}
\end{prooftree}
\qquad \begin{prooftree}
\AXC{}
\RL{$\ \mathrm{Assign}$}
\UIC{$ \{ \mathbf{P}[x \mapsto e] \} \ \texttt{$x$ := $e$} \ \{ \mathbf{P} \} $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$ \{ \mathbf{P} \} \ s_{1} \ \{ \mathbf{Q} \} $}
\AXC{$ \{ \mathbf{R} \} \ s_{2} \ \{ \mathbf{R} \}$}
\RL{${\ \mathrm{Seq}}$}
\BIC{$ \{ \mathbf{P} \} \ \texttt{$s_{1}$; $s_{2}$} \ \{ \mathbf{R} \} $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$ \{ b \land \mathbf{P} \} \ s_{1} \ \{ \mathbf{Q} \} $}
\AXC{$ \{ \lnot b \land \mathbf{P} \} \ s_{2} \ \{ \mathbf{Q} \} $}
\RL{${\ \text{If}}$}
\BIC{$ \{ \mathbf{P} \} \ \texttt{if $b$ then $s_{1}$ else $s_{2}$ end} \ \{ \mathbf{Q} \} $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$ \{ b \land \mathbf{P} \} \ s \ \{ \mathbf{P} \} $}
\RL{${\ \text{While}}$}
\UIC{$ \{ \mathbf{P} \} \ \texttt{while $b$ do $s$ end} \ \{ \lnot b \land \mathbf{P} \} $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$ \{ b \land \mathbf{P} \land e = Z\} \ s \ \{ \Downarrow \mathbf{P} \land e < Z\} $}
\RL{${\ \text{While}\ast\ast}$}
\UIC{$ \{ \mathbf{P} \} \ \texttt{while $b$ do $s$ end} \ \{ \Downarrow \lnot b \land \mathbf{P} \} $}
\end{prooftree}
\\ \\
&
\begin{prooftree}
\AXC{$ \{ \mathbf{P}' \} \ s \ \{ \mathbf{Q}' \} $}
\RL{${\ \text{Consequence $\ast$}}$}
\UIC{$ \{ \mathbf{P} \} \ s \ \{ \mathbf{Q} \} $}
\end{prooftree}
\\ \\
\ast &\quad \text{$\mathbf{P} \vDash \mathbf{P'}$ and $\mathbf{Q}' \vDash \mathbf{Q}$} \\
\ast \ast & \text{$Z \not\in \mathrm{free}(\mathbf{P})$ and $b \land \mathbf{P} \vDash 0 \leq e$}
\end{align}}}
$$
