---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w10.md]]"
next: "[[FMFP-v-w12.md]]"
slides:
  - "[[FMFP-s12-axiomatic-semantics.pdf]]"
tags:
---


# Info


# Topics
- partial correctness
- termination
- total correctness
- axiomatic semantics
- hoare triple

# Notes
- hoare triple $\{  \mathbf{P} \} \ s \ \{  \mathbf{Q} \}$
- logical variables are only used in assertions and allow reference across pre- and post-condition
	- substitution lemma holds, $\mathcal{B}[\![\mathbf{P}[x \mapsto e]]\!]\sigma = \mathcal{B}[\![\mathbf{P}]\!]\sigma[x \mapsto \mathcal{A}[\![e]\!]\sigma]$
	- applying $\texttt{skip}$ rule requires ==**syntactic** equivalence==, for this use
		- $\mathbf{P} \models \mathbf{Q} \iff \forall \sigma.\mathcal{B}[\![\mathbf{P}]\!]\sigma= \mathrm{True} \to \mathcal{B}[\![\mathbf{Q}]\!]\sigma = \mathrm{True}$
		- i.e. **semantic** consequence of assertions
		- may strengthen preconditions and weaken postconditions, in diagram $\uparrow \circ \rightarrow \circ \downarrow$
		- build proof outlines bottom-up
$$
\overset{\huge \mathrm{Ax}}{\boxed{\begin{align}
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
\AXC{$ \{ \mathbf{P}' \} \ s \ \{ \mathbf{Q}' \} $}
\RL{${\ \text{Consequence $\ast$}}$}
\UIC{$ \{ \mathbf{P} \} \ s \ \{ \mathbf{Q} \} $}
\end{prooftree}
\\ \\
\ast &\quad \mathbf{P} \models \mathbf{P'}, \mathbf{Q}' \models \mathbf{Q}
\end{align}}}
$$
