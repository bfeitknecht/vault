

# 4
## (a)
![[TI-e-u02.pdf#page=1&rect=97,506,529,555|TI-e-u02, p.1]]

First, we construct a program, that takes $n$ as input and prints $w_n$.
```pascal
begin
	M := n;
	M := 4 * (M ^ 2);
	
	for i = 1 to 100_000
		write(0);
	for i = 1 to M
		write(0101);
end
```

The only variable part of this program is $n$, the rest can be represented by a constant $c$. The binary lenght of this program can then be upperbounded by
$$
\lfloor \log_2(n)\rfloor + 1 \ +\ c
$$

The Kolmogorov complexity in respect to $n$ can then be upperbounded. We use $c'$ since simplifying can slightly change the constant.
$$
\begin{align}
K(w_{n}) &\leq \log_2(n)+ c' &\text{(1)}
\end{align}
$$

To express this with respect to $w_n$ we first have to calculate the lenght of $w_n$.
$$
\begin{align}
|w_{n}| &= |0| \cdot 100'000+|0101| \cdot 4n^2 \\
&= 100'000+16n^2
\end{align}
$$

Now we solve for $n$.
$$
\begin{align}
n &= \sqrt{ \frac{|w_{n}| - 100'000}{16} } \\
&= \frac{\sqrt{ |w_{n}| - 100'000 }}{4}
\end{align}
$$

Replacing $n$ in $\text{(1)}$ and simplifying yields our final result.
$$
\begin{align}
K(w_{n}) &\leq \log_2\left(\frac{\sqrt[2]{|w_{n}| - 100'000}}{4}\right)+c'  \\
&\leq \log_2 \log_2|w_{n}| +c''
\end{align}
$$
$\square$


## (b)
![[TI-e-u02.pdf#page=1&rect=97,439,531,500|TI-e-u02, p.1]]


Let's define the sequence $y_0 < y_1 < y_2 <\dots$ with $y_i=0^{3^i}$ for all $i \in \mathbb N$. Since $|y_{i}| < |y_{i+1}|$, the required order follows.

We have $i = \log_{3}(|y_{i}|)$ for  some $\ i \geq 0$.

We show a program, that takes $i$ as an input and prints $y_i$:
```pascal
begin
	M := i;
	M := 3 ^ M;
	for I = 0 to M;
		write(0);
end
```

The only variable part of this program is $i$, everything else is of constant length. Accordingly, the length of the program can be upper bounded for a constant $c'$ by $\lfloor \\log_{2}(i) \rfloor + 1 + c'$.

Thus follows,
$$
\begin{align}
K(y_{i}) &\leq \log_{2}(i) + c \\
&\leq \log_{2}\log_{3}(|y_{i}|) + c
\end{align}
$$
for some constant $c$.
$\square$


# 5
![[TI-e-u02.pdf#page=1&rect=69,333,528,368|TI-e-u02, p.1]]

Let $L = \{  \{0,1\}^{n} \mid n \in\mathbb{N}\}$. For the sake of contradiction, lets' assume that less than 99% of words $w \in L$ fulfill $K(w)> n-8$.

Since every word in $L$ is unique, it has to have a unique program generating it. There are $|L|=2^n$ unique words of lenght $n$ and  $\sum_{i=0}^{n-8} 2^i = 2^{n-7}-1$ unique programs.

The total number of words minus the number of words that fulfill the assumed requirement divided by the total number of words, yields the ratio of words that fulfill the requirement to the total amount of words.
$$
\begin{align}
\frac{2^n-2^{n-7}}{2^n} &=1-\frac{2^{0}}{2^7} \\
&=1-\frac{1}{128} \\
&= \frac{127}{128} \overset{!}{>} \frac{99}{100}
\end{align}
$$

The ratio between words fulfilling the requirement $K(w)$ and all existing programs is more than 99%, thus we arrive at a **contradiction** which proves the statement.
$\square$


# 6
![[TI-e-u02.pdf#page=1&rect=66,257,529,295|TI-e-u02, p.1]]

For the sake of contradiction, let's assume there exists some program $P$ that takes any arbitrary number $n \in \mathbb N$ and prints a bitstring $w\in\{0, 1\}^n$, where $K_{P}(w) > n-8$ denotes its kolmogorov complexity of $w$ generated with $P$.

We define another program, $Q$, which takes as input some $n\in \mathbb N$ and returns the word $w$ that $P(n)$ generates.
```pascal
begin
	x := n;
	P(x);
end
```

The kolmogorov complexity of the generated word $w$ with the program $Q$ is denoted by $K_{Q}(w)=\lfloor \log_{2}(n) \rfloor + 1 +c = \lfloor \log_{2}(n) \rfloor +c'$. This follows from the fact that we only need to encode the variable part $n$ in binary, plus some constant $c$, independent of the input size $n$ which denotes the encoding length of the invariable part of $Q$.

Becaus the kolmogorov complexity of $w$ is tied to the shortest programing generating it, the two representations must be equal, i.e. $K_{P}(w)=K_{Q}(w)$.
$$
\begin{align}
K_{P}(w) &> n-8 &\text{(substitute $K_{Q}(w)$ in LHS)}\\
\log_{2}(n)+c &> n-8  &\text{(absorb additive constants on LHS)}\\
\log_{2}(n)+c' &> n &\text{(take limit of RHS)}\\
c' &> \underbrace{ n - \log_{2}(n) }_{ \lim_{ n  } = \infty } \\
c' &\overset{!}{>} \infty
\end{align}
$$

However, doing so leads to a **contradiction**, as no additive constant can be bigger than infinity. Thus there exists no such program $P$.
$\square$

