
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

q_((q_))
q0(((q0)))
q1((q1))
q2((q2))
q3(((q3)))
q4((q4))
q5((q5))


S --> q_

q_ -->|"0"| q0 -->|"0"| q0
q_ -->|"1"| q1 -->|"1"| q3 -->|"1"| q3

q1 -->|"0"| q5 -->|"0"| q5
q5 -->|"1"| q3 -->|"0"| q5 

q0 -->|"1"| q2 -->|"1"| q2
q2 -->|"0"| q4 -->|"1"| q2
q4 -->|"0"| q0
```

Its states' equivalence classes are the following.
$$
\begin{align}
\mathrm{Kl}[q\_] &= L_{\lambda} \\
\mathrm{Kl}[q_{0}] &= \{ 0 \}^{*} \cup \mathrm{Kl}[q_{4}] \cdot \{ 0 \} \\
\mathrm{Kl}[q_{1}] &= \{ 1 \} \\
\mathrm{Kl}[q_{2}] &= \{  \} \\
\mathrm{Kl}[q_{3}] &= \{ 0 \}^{*} \cup \mathrm{Kl}[q_{5}]\cdot \{ 1 \}  \\
\mathrm{Kl}[q_{4}] &= \{  \} \\
\mathrm{Kl}[q_{5}] &= \{  \}
\end{align}
$$


```mermaid
flowchart LR

classDef hidden display: none;

S:::hidden

q_((q_))
q0(((q0)))
q1((q1))
q2((q2))
q3(((q3)))
q4((q4))
q5((q5))


S --> q_
q_ -->|"0"| q0
q_ -->|"1"| q1

q0 -->|"0"| q0
q1 -->|"1"| q3

q3 -->|"1"| q3

q1 -->|"0"| q1


q5 -->|"0"| q5
q5 -->|"1"| q3
q3 -->|"0"| q5 

q0 -->|"1"| q2
q2 -->|"1"| q2
q2 -->|"0"| q4
q4 -->|"1"| q2
q4 -->|"0"| q0
```



# 11
![[TI-e-u04.pdf#page=1&rect=66,354,531,451|TI-e-u04, p.1]]



# 12

![[TI-e-u04.pdf#page=1&rect=75,225,532,308|TI-e-u04, p.1]]



![[TI-e-u04.pdf#page=1&rect=76,157,533,224|TI-e-u04, p.1]]
