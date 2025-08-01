## 2.1
a) 1. ?
b) 4. ?
c) 2.?
d) 4. ?
e)

---
## 2.3
a) \*
$$
\begin{align}
& a_n = \frac{3n^5 + 2n^3 + 5n}{10 + 2n^5}
\end{align}
$$
```desmos-graph
left = -1;
bottom = -1
right = 25;
---
y = (3n^5 + 2n^3 + 5n) / (10 + 2n^5) |n>0|
```

beschränkt: nein ?
konvergent: ja, $\lim_{n\rightarrow \infty} a_n =\frac{3}{2}$

b) \*
$$
\begin{align}
& b_n = \sqrt{n^2 + 3n} -n
\end{align}
$$
```desmos-graph
left = -1;
right = 50;
top = 2;
bottom = -1;
---
y = \sqrt{n^2 + 3 n} - n |n>0|
```



e) \*
$$
\begin{align}
& e_n = \sqrt[n]{5^n + 11^n + 17^n}
\end{align}
$$
```desmos-graph
y = 1
```

---
## 2.4 \*
Es sei $(x_n)_{n\geq 1}$ rekursiv gegeben durch $x_1 := 1$ und
$$
\begin{align}
& x_{n+1} := 1 + \frac{1}{x_n}, & n\geq 1
\end{align}
$$
i) Nehmen Sie an, dass $(x_n)_{n\geq 1}$ gegen $g \in \mathbb R$ konvergiert. Bestimmen Sie $g$.

$$
\begin{align}
& \lim_{n \rightarrow \infty} x_{n + 1} = 1 + \frac{1}{\lim _{n \rightarrow \infty} x_{n}} \\
& g = 1 + \frac{1}{g} \\
& g = \frac{g + 1}{g} \\
& g^2 = g +1 \\
& g^2 -g - 1 = 0 \\
\implies &g = \frac{1±\sqrt{5}}{2} \\
x_1 = 1 \implies & g = \frac{1+\sqrt 5}{2} \\
&& \square
\end{align}
$$


ii)

Zeigen Sie, dass $|x_{n + 1} - g| \leq \frac{|x_{n} - g|}{g}$ $\forall n \geq 1$. Folgern Sie, dass $(x_n)_{n\geq 1}$ gegen $g$ konvertiert.

We prove this by induction:

base case:
$n \leftarrow 1$
$$
\begin{align}
& |x_2 - g | \leq \frac{|x_1 - g|}{g} \\
& \Bigg|2 - \frac{1 + \sqrt 5}{2} \Bigg| \leq \frac{\bigg|1 - \frac{1 + \sqrt 5}{2}\bigg|}{\frac{1 + \sqrt 5}{2}} \\
& \Bigg|\frac{3 - \sqrt 5}{2} \Bigg| \leq \frac{\bigg|\frac{1 - \sqrt 5}{2}\bigg| \cdot 2}{1 + \sqrt 5} \\
& \Bigg|\frac{3 - \sqrt 5}{2} \Bigg| \leq \frac{|1 - \sqrt 5|}{1 + \sqrt 5} \\
& \Bigg|\frac{3 - \sqrt 5}{2} \Bigg| = \Bigg|\frac{3 - \sqrt 5}{2} \Bigg| \\
\end{align}
$$
As such the base case holds.


inductive hypothesis:
$|x_{n + 1} - g| \leq \frac{|x_{n} - g|}{g}$ $\forall n \geq 1$


inductive step:
$n \leftarrow n + 1$

$$
\begin{align}
& |x_{n + 2} - g | \leq \frac{|x_{n + 1} - g|}{g} \\

& \bigg| 1 + \frac{1}{x_{n+1}} - g \bigg| \leq \frac{|1 + \frac{1}{x_n} - g|}{g} \\

& \bigg| 1 + \frac{1}{1 + \frac{1}{x_{n}}} - g \bigg| \leq \frac{|1 + \frac{1}{x_n} - g|}{g} \\

& \bigg| \frac{x_n + x_n + 1}{x_n + 1} - g \bigg| \leq \frac{|1 + \frac{1}{x_n} - g|}{g} \\

& \bigg| \frac{x_n \cdot (2 + \frac{1}{x_n}-g)}{x_n + 1} \bigg| \leq \frac{|1 + \frac{1}{x_n} - g|}{g} \\



%& \Bigg|\frac{x_{n+1} + 1 - g \cdot x_{n+1}}{x_{n + 1}} \Bigg| \leq \frac{|x_{n + 1} - g|}{g} \\

%& \Bigg|\frac{x_{n+1} \cdot (1 + \frac{1}{x_{n+1}} - g)}{x_{n + 1}} \Bigg| \leq \frac{|x_{n + 1} - g|}{g} \\


%& \Bigg|2 - \frac{1 + \sqrt 5}{2} \Bigg| \leq \frac{\bigg|1 - \frac{1 + \sqrt 5}{2}\bigg|}{\frac{1 + \sqrt 5}{2}} \\
%& \Bigg|\frac{3 - \sqrt 5}{2} \Bigg| \leq \frac{\bigg|\frac{1 - \sqrt 5}{2}\bigg| \cdot \frac{1 + \sqrt 5}{2}}{2} \\
%& |3 - \sqrt 5| \leq \Bigg|\frac{1 - \sqrt 5}{2}\Bigg| \cdot \frac{1 + \sqrt 5}{2} \\
%& |3 - \sqrt 5| \leq 1 \\
\end{align}
$$



---
## 1.4

---
## 1.5
i)
ii)

---
## 1.6
a)
$$
\begin{align*}
& A_1 = \left\{ t + \frac{1}{t} \ \Bigm\lvert \ t \in (0, \infty) \right\} \\ \\
& \text{Inf($A_1$)} = \text{Min($A_1$)} = 0 \\
& \text{Sup($A_1$)} = \infty \\
\end{align*}
$$

b)
$$
\begin{align*}
& A_2 = \left\{ \frac{1}{2+k} + \frac{1}{3+m} \ \Bigm\lvert \ k,m \in \mathbb N \right\} \\ \\
& \text{Inf($A_2$)} = \text{Min($A_2$)} = 0 \\
& \text{Sup($A_2$)} = \text{Max($A_2$)}= \frac{5}{6} \\
\end{align*}
$$

---
## 1.7
a) true
b)
c)
d)

---
## 1.8




1)
2)
3)
4)
5)
6)
7)



---
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


$$
\begin{align}
& z = a + b \cdot i \\
& \text{Re(z), } \Re(z) = a \\
& \text{Im(z), } \Im(z) = b \cdot i \\ \\
& r = \sqrt{a^2 + b^2} = |z| \\
& \phi = \cos^{-1}\left(\frac{\Re{(z)}}{r}\right) \\

\end{align}
$$
