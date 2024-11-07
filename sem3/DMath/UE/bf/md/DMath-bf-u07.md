
# 7.3 ![[DMath-e-u07.pdf#page=1&rect=79,378,525,409|DMath-e-u07, p.1]]
## a) ![[DMath-e-u07.pdf#page=1&rect=108,336,527,377|DMath-e-u07, p.1]]

False. Consider the following counterexample. Let $a=2$ and $b=3$. Then $\gcd(a, b) = 1$ and thus the RHS is $(1) = \mathbb{Z}$. Thus, trivially $1 \in \mathbb{Z}$. However, on the LHS we have $1 \not\in \big( (2) \cup (3) \big)$. Hence $(a) \cup (b) \neq (\gcd(a, b))$.
$\square$


## b) ![[DMath-e-u07.pdf#page=1&rect=106,281,529,325|DMath-e-u07, p.1]]
True. We prove this via double set inclusion.

First, we show that $(\mathrm{lcm}(a,b)) \subseteq (a) \cap (b)$. Let $y \in (\mathrm{lcm}(a, b))$. Then $y = k \cdot \mathrm{lcm}(a,b)$, for some $k \in \mathbb{Z}$. Per definition of $\mathrm{lcm}$, this is a multiple of $a$ and $b$. Since $(a) \cap (b)$ is exactly the set of all multiples of both $a$ and $b$, we have $y \in (a) \cap (b)$. Formally, we write this as follows.
$$
\begin{align}
(\mathrm{lcm}(a,b)) &\subseteq (a) \cap (b) &\text{(def. ideal)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ ua \mid u \in \mathbb{Z} \} \cap \{ vb \mid v \in \mathbb{Z} \} &\text{(def. $\cap$)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ x \mid u,v \in \mathbb{Z} : x = ua \land x = vb \} &\text{(def. $\mathrel|$)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ x \mid a|x \land b|x \} &\text{(def. $\subseteq$, def. $\mathrm{lcm}$)} \\
\forall x \Big( \big( x = kl \land a|l \land b|l \land \forall m ( (a|m \land b|m) \to l|m) \big) &\to \big( a|x \land b|x \big) \Big) &\text{(def. $\mathrel|$)} \\
\forall x \Big( \big( a|x \land b|x \land \forall m ( (a|m \land b|m) \to l|m) \big) &\to \big( a|x \land b|x \big) \Big) &\text{($F \land G \models F$)} \\
\forall x \big( (a|x \land b|x) &\to (a|x \land b|x) \big)  \equiv \top &\text{($F \to F \equiv \top$)} \\
\end{align}
$$

Then we show that $(a) \cap (b) \subseteq (\mathrm{lcm} (a,b))$. Let $x \in (a) \cap (b)$. Then $x$ is a multiple of both $a$ and $b$, i.e. there exists integers $u, v \in \mathbb{Z}$ such that $x=ua$ and $x = vb$. Since $x$ is a multiple of $a$ and $b$, it must also be a multiple of their least common multiple, by definition of $\mathrm{lcm}$. Then there exists an integer $k \in \mathbb{Z}$ such that $x = k \cdot \mathrm{lcm}(a,b)$. Thus we have $x \in (\mathrm{lcm(a,b))}$. Formally we denote this with the below.
$$
\begin{align}
(a) \cap (b) &\subseteq (\mathrm{lcm}(a,b)) &\text{(def. ideal)} \\
\{ ua \mid u \in \mathbb{Z} \} \cap \{ vb \mid v \in \mathbb{Z} \} &\subseteq \{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\text{(def. $\cap$)} \\
\{ x \mid u,v \in \mathbb{Z} : x = ua \land x = vb \} &\subseteq \{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\text{(def. $\mathrel{|}$)} \\
\{ x \mid a | x \land b |x \} &\subseteq \{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\text{(def. $\subseteq$)}
\\
\forall x \Big( (a|x \land b|x) &\to  \big(x = kl \land a|l \land b|l \land \forall m (( a|m \land b|m) \to l|m \big) \Big) &\text{(def. $\mathrel|$)} \\
\forall x \Big( (a|x \land b|x) &\to  \big(a|x \land b|x \land \forall m (( a|m \land b|m) \to l|m \big) \Big) &\text{($F \land G \models F$)} \\
\forall x \big( (a|x \land b|x) &\to  (a|x \land b|x) \big) \equiv \top &\text{($F \to F \equiv \top$)} \\
\end{align}
$$

Since we have shown that both $(\mathrm{lcm}(a,b)) \subseteq (a) \cap (b)$ and $(a) \cap (b) \subseteq (\mathrm{lcm}(a,b))$ hold, we have proven that $(a) \cap (b) = (\mathrm{lcm}(a,b))$.
$\square$
