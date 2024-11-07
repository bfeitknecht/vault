
# 7.3 ![[DMath-e-u07.pdf#page=1&rect=79,378,525,409|DMath-e-u07, p.1]]
## a) ![[DMath-e-u07.pdf#page=1&rect=108,336,527,377|DMath-e-u07, p.1]]

False. Consider the following counterexample. Let $a=2$ and $b=3$. Then $\gcd(a, b) = 1$ and thus the RHS is $(1) = \mathbb{Z}$. Thus, trivially $1 \in \mathbb{Z}$. However, on the LHS we have $1 \not\in \big( (2) \cup (3) \big)$. Hence $(a) \cup (b) \neq (\gcd(a, b))$.
$\square$


## b) ![[DMath-e-u07.pdf#page=1&rect=106,281,529,325|DMath-e-u07, p.1]]

True. We prove this via double set inclusion. First, we show that $(\mathrm{lcm}(a,b)) \subseteq (a) \cap (b)$.
$$
\begin{align}
(\mathrm{lcm}(a,b)) &\subseteq (a) \cap (b) &\text{(def. $\mathrm{lcm}$, def. ideal)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ ua \mid u \in \mathbb{Z} \} \cap \{ vb \mid v \in \mathbb{Z} \} &\text{(def. $\cap$)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ x \mid u,v \in \mathbb{Z} : x = ua \land x = vb \} &\text{(def. $\mathrel|$)} \\
\{ k \cdot \mathrm{lcm}(a,b) \mid k \in \mathbb{Z} \} &\subseteq \{ x \mid a|x \land b|x \} &\text{(def. $\subseteq$)} \\
\forall x (\exists k(x = k \cdot \mathrm{lcm}(a, b)) &\to a|x \land b|x) &\text{(def. $\mathrm{lcm}$)}
\end{align}
$$

Then we show that $(a) \cap (b) \subseteq (\mathrm{lcm} (a,b))$. 
$$
\begin{align}
(a) \cap (b) &\subseteq (\mathrm{lcm}(a,b)) &\text{(def. ideal)} \\
\{ ua \mid u \in \mathbb{Z} \} \cap \{ vb \mid v \in \mathbb{Z} \} &\subseteq \{ kl \mid k \in \mathbb{Z}, l = \mathrm{lcm}(a,b) \} &\text{(def. $\cap$, def. $\mathrm{lcm}$)} \\
\{ x \mid u,v \in \mathbb{Z} : x = ua \land x = vb \} &\subseteq \Big\{ kl \mid k, l, m \in \mathbb{Z} : a |l \land b |l \land \forall m \big( (a | m \land b | m) \to l |m \big)  \Big\} &\text{(def. $\mathrel{|}$)} \\
\{ x \mid a | x \land b |x \} &\subseteq 
\end{align}
$$








![[dmath-script-hs24.pdf#page=89&rect=33,243,388,307|dmath-script-hs24, p.79]]


![[dmath-script-hs24.pdf#page=88&rect=30,258,392,347|dmath-script-hs24, p.78]]
