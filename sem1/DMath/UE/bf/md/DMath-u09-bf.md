
## 9.2
#### a)
Determine the order and the elements of the group $\langle \mathbb Z^\ast_{36} ; \odot \rangle$

---

$\mathbb Z^\ast_{36}$: This denotes the set of all positive integers (because of $^\ast$) less than 36 that are coprime (relatively prime) to 36 (because of $_{36}$). These are the numbers that do not share any common factors with 36 other than 1.

$\odot$: This denotes the operation on the group, in this case multiplication mod 36.

Let's find the elements. The prime factors of 36 are $2^2, 3^2$, so we need all numbers less than 36 that don't share these factors.

$\mathbb Z^\ast_{36} = \{1, 5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35\}$

Now let's find the order of each element. The order is defined as follows: $a^n = e$, where $e$ is the neutral element in the group, $a$ is an element in the group, $n$ is the smallest positive integer such that the equation holds. In our case we write this as follows: $a^n \equiv_{36} 1$.

$$
\begin{align}

1^1 &\equiv_{36} 1 \\\\
5^6 &\equiv_{36} 1 \\\\

7^{12} &\equiv_{36} 7^4 \odot_{36} 7^8 \\
&\equiv_{36} 7^2 \odot_{36} 7^2 \odot_{36} 7^8 \\
&\equiv_{36}13 \odot_{36} 13 \odot_{36} 7^8 \\
&\equiv_{36} 25 \odot_{36} 25 \odot_{36} 25 \\
&\equiv_{36} 5^2 \odot_{36} 5^2 \odot_{36} 5^2 \\
&\equiv_{36} 5^6 \\
&\equiv_{36} 1 \\\\

11^6 &\equiv_{36} 11^2 \odot_{36} 11^4 \\
&\equiv_{36} 11^2 \odot_{36} 11^2 \odot_{36} 11^2 \\
&\equiv_{36} 13 \odot_{36} 13 \odot_{36} 13 \\
&\equiv_{36} 25 \odot_{36} 13 \\
&\equiv_{36} 1 \\\\

13^6 &\equiv_{36} 5^2 \odot_{36} 5^2 \odot_{36} 5^2 \\
&\equiv_{36} 5^6 \\
&\equiv_{36} 1 \\\\

17^2 &\equiv_{36} 1 \\\\

19^2 &\equiv_{36} 1 \\\\

23^6 &\equiv_{36} 5^2 \odot_{36} 5^2 \odot_{36} 5^2 \\
&\equiv_{36} 5^6 \\
&\equiv_{36} 1 \\\\

25^6 &\equiv_{36} 5^2 \odot_{36} 5^2 \odot_{36} 5^2 \\
&\equiv_{36} 5^6 \\
&\equiv_{36} 1 \\\\

31^6 &\equiv_{36} 5^2 \odot_{36} 5^2 \odot_{36} 5^2 \\
&\equiv_{36} 5^6 \\
&\equiv_{36} 1 \\\\

35^2 &\equiv_{36} 1 \\\\

\end{align}
$$


To find the order of the group we simply calculate $\varphi(36)$ using Lemma 5.12.:
$$
\varphi(m) = m \cdot  \prod_{p\ \text{(prime)}\ | \ m} \left( 1-\frac 1 p\right)
$$
$36 \cdot (1-\frac 1 2) \cdot (1- \frac 1 3) = 36 \cdot \frac 1 3 = 12$.

Thus we have shown that the order of the group is $\varphi(36)=12$ and the elements are $\{1, 5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35\}$.
$\square$






















## 9.4
In this exercise, you prove the remark in Chapter 5, Footnote 20 of the lecture notes. Consider an algebra $\langle R; +, -, 0, \cdot, 1\rangle$ such that:

i) $\langle R; +, -, 0\rangle$ is a group.
ii) $\langle R; \cdot, 1\rangle$ is a monoid.
iii) $a(b + c) = ab + ac$ and $(b + c)a = ba + ca$ for all $a, b, c, \in R$.

Prove that such an algebra satisfies Definition 5.18 in the lecture notes. Each step should consist of one or more applications of the given axioms, and the axioms used should be made explicit.

Hint: consider (1 + 1)(a + b).



---

## **Proof**:

Let's consider the case $(1+1)(a+b)$.





$$
\begin{align}

(1+1)(a+b)=(1+1)(a+b) &\hspace{222pt}\text{left and right distributive law (5.18.iii)} \\
&\overset{\cdot}{\iff}  (1+1)a + (1+1)b = 1(a+b) + 1(a+b) \hspace{18pt}\text{left and right distributive law (5.18.iii)} \\
&\overset{\cdot}{\iff} a + a + b + b = a + b + a + b \hspace{69pt}\text{left cancellation law(5.3..iii)} \\
&\overset{\cdot}{\iff} a + b + b = b + a + b \hspace{103pt}\text{right cancellation law (5.3.iv)}\\
&\overset{\cdot}{\iff} a + b = b + a \\
&\quad\square
\end{align}

$$


We have proven that the operation $+$ on the algebra $\langle R; +, -, 0, \cdot, 1\rangle$ is commutative. The algebra is thus proven to be a ring.




Definition 5.18.
A ring $\langle R; +, -, 0, \cdot, 1\rangle$ is an algebra for which
(i) $\langle R; +, -, 0\rangle$ is a (commutative) group
(ii) $\langle R;\cdot, 1\rangle$ is a monoid.
(iii) $a(b + c) = (ab) + (ac)$ and $(b + c)a = (ba) + (ca)$ for all $a, b, c \in R$ (left and right distributive laws).
A ring is called commutative if multiplication is commutative (ab = ba)

Lemma 5.17.
For any ring $\langle R; +, -, 0, \cdot, 1\rangle$, and for all $a, b \in R$,
(i) $0a = a0 = 0$
(ii)$(−a)b = −(ab)$
(iii) $(−a)(−b) = ab$
(iv) If $R$ is non-trivial (i.e., if it has more than one element), then $1 \neq 0$


Definition 5.7.
A group is an algebra $\langle G;\ast,\hat{\;},e\rangle$ satisfying the following axioms:
G1 $\ast$ is associative.
G2 $e$ is a neutral element: $a \ast e = e \ast a = a$ for all $a \in G$
G3 Every $a \in G$ has an inverse element $\hat{a}$, i.e., $a \ast \hat{a} = \hat{a} \ast a = e$


Lemma 5.3.
For a group $\langle G; \ast, \hat{\;},e \rangle$ we have for all $a, b, c \in G$:
(i) $\widehat{(\hat{a})}=a$
(ii)$\widehat{a\ast b}=\hat{a}\ast\hat{b}$
(iii) Left cancellation law: $a \ast b = a \ast c \implies b = c$
(iv) Right cancellation law: $b \ast a = c \ast a \implies b = c$
(v) The equation $a \ast x = b$ has a unique solution $x$ for any $a$ and $b$
So does the equation $x \ast a = b$
