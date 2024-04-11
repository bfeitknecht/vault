![[AuW-u03-e.pdf]]


## 1
#### a)
We assume, that "Anzahl Kanten über den Schnitt ($S, V\setminus S$)" means \# of edges $e$ with an incident vertex in each set ($S, V \setminus S$).

We define an indicator variable:
$$
Y_e =
\begin{cases}
1, \quad e \text{ is an edge over ($S$, $V\setminus S$)} \\
0, \quad \text{otherwise}
\end{cases}
$$
As all subsets are equally likely, the chance for every edge to have its vertices in different subsets $(S, V\setminus S)$ is $0.5$.

$$
\begin{align}
&\forall e \in E : \mathbb E[Y_e] = \frac 1 2 \\
&\mathbb E[X] \overset {\text{Linearity of $\mathbb E$}} = \sum_{e\in \mathbb E} \mathbb E[Y_e] = m\cdot \frac 1 2 = \frac m 2
\end{align}
$$
$\square$

#### b)
