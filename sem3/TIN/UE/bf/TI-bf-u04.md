
Basil Feitknecht, 23-922-099
Camil Schmid, 23-944-234
Dennis Küenzi, 21-559-315


# 10
![[TI-e-u04.pdf#page=1&rect=67,489,533,572|TI-e-u04, p.1]]

We interpret $\mathrm{Number}(\lambda)=0$. Thus the graph representation of a finite automaton $M$ that accepts the given language, i.e. $L=L(M)$ is given below.
```mermaid
flowchart LR

classDef hidden display: none;

S:::hidden

q0((q0))
q00(((q00)))
q01((q01))
q010((q010))
q10((q10))
q11(((q11)))


S --> q0
q0 -->|"0"| q00
q0 -->|"1"| q10

q00 -->|"0"| q00
q00 -->|"1"| q01
q01 -->|"1"| q01
q01 -->|"0"| q010
q010 -->|"1"| q01
q010 -->|"0"| q00

q10 -->|"1"| q11
q11 -->|"1"| q11
q11 -->|"0"| q10
q10 -->|"0"| q10
```

Its states' equivalence classes are the following.
$$
\begin{align}
\mathrm{Kl}[q_{0}] &= L_{\lambda} \\
\mathrm{Kl}[q_{00}] &= \mathrm{Kl}[q_{010}] \cdot \{ 0 \} \cdot \{ 0 \}^{*} \cup \{ 0 \}^{*} \\
\mathrm{Kl}[q_{01}] &= \{ 0w1 \mid w \in \Sigma^{*} \} \\
\mathrm{Kl}[q_{010}] &= \mathrm{Kl}[q_{01}] \cdot \{ 0 \} \\
\mathrm{Kl}[q_{10}] &= \{ 1w0 \mid w \in \Sigma^{*} \} \\
\mathrm{Kl}[q_{11}] &= \mathrm{Kl}[q_{10}]\cdot \{ 1 \} \cdot \{ 1 \}^{*} \cup \{ 1 \}^{*}
\end{align}
$$
$\square$

<div class="page-break" style="page-break-before: always;"></div>

# 11
![[TI-e-u04.pdf#page=1&rect=66,354,531,451|TI-e-u04, p.1]]

We define two partial finite automata $M_{1}, M_{2}$, such that $L=L(M_{1})\cup L(M_{2})$. The partial automata are defined over the same input alphabet $\Sigma=\{ a, b \}$. 

The graph representation of $M_{1}$ is as follows.
```mermaid
flowchart LR

classDef hidden display: none;

S:::hidden

q0((q0))
q1((q1))
q2(((q2)))
q3((q3))

S --> q0 -->|"a, b"| q1 -->|"a, b"| q2 -->|"a, b"| q3 -->|"a, b"| q3
```

With its states' equivalence classes being defined as below.
$$
\begin{align}
\mathrm{Kl}[q_{0}] &= L_{\lambda} \\
\mathrm{Kl}[q_{1}] &= \Sigma^{1} \\
\mathrm{Kl}[q_{2}] &= \Sigma^{2} \\
\mathrm{Kl}[q_{3}] &= \Sigma^{3} \cdot \Sigma^{*}
\end{align}
$$


For the second partial automaton, $M_{2}$ its graph representation is this.
```mermaid
flowchart LR
classDef hidden display: none;

S:::hidden

q0((q0))
q1(((q1)))
q2((q2))

S --> q0 -->|"a"| q1 -->|"a"| q2 -->|"a"| q0
q0 -->|"b"| q0
q1 -->|"b"| q1
q2 -->|"b"| q2
```

And the classes on its states are then this.
$$
\begin{align}
\mathrm{Kl}[q_{0}] &= \{ b \}^{*} \cup \{ w \in \Sigma^{*} \mid |w|_{a}\equiv_{3}0 \} \\
\mathrm{Kl}[q_{1}] &=\mathrm{Kl}[q_{0}] \cdot \{ a \} \cdot \{ b \}^{*} \\
\mathrm{Kl}[q_{3}] &= \Sigma^{*} - (\mathrm{Kl}[q_{0}] \cup \mathrm{Kl}[q_{1}])
\end{align}
$$
$\square$

<div class="page-break" style="page-break-before: always;"></div>


# 12

![[TI-e-u04.pdf#page=1&rect=75,225,532,308|TI-e-u04, p.1]]



![[TI-e-u04.pdf#page=1&rect=76,157,533,224|TI-e-u04, p.1]]

