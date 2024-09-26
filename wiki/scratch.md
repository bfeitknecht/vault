%% 
Proof by contradiction

assumption

Assume for the sake of contradiciton, there exists a language $L\neq\empty, L\neq L_{\lambda}, |L|\neq \infty$ s.t. $L^2\subseteq L$. 

apply definition of language concat

case distinction
case L=ø

case L = $\lambda$

case |L|=infinite

uv in L -> wuv -/> in L
w.o.l.g.

therefore, our assumption must be wrong and the statement is proven.



We pove this by case distinction.

### Case $L = \emptyset$
Let $L = \emptyset$, then $L^2 = \emptyset$ and clearly $\emptyset \subseteq \emptyset$. Thus $L^2 \subseteq L$.

### Case $L=\{\lambda\}$
Let $L = \{\lambda\}$, then $L^2 = \{\lambda\lambda\} = \{\lambda\}$. Since $L = L^2 \implies L^2 \subseteq L$
This trivially proves the second part of the implication. 

### Case $|L|=\infty$

To prove this case we show that $L$ cannot be finite yet still fulfill $L^2 \subseteq L$.
Assuming $L$ contains as least one non-empty word $w \in L$ then $L^2$ has to contain the cconcatenation of that word with itself, i.e. $ww \in L^2$.

To fulfill $L^2 \subseteq L$, there has to be some  $v=ww \in L$. This now makes it so that $vv \in L^2$ also has to be in $L^2$ creating an infinite loop and thus infinite number of unique words.
This is only possible if $L$ is infinite and proves the third part of the implication. %%




Try 2

To show that two Languages are equal we need to show that $L_1 \subseteq L_2$ and $L_2 \subseteq L_1$.

Lets start with:
$L_2 * (L_2 - L_1) \subseteq (L_2)^2 - L_2 * L_1$

Let $z \in L_2 * (L_2 - L_1)$.
Because of the definition of concatination we can say:
$z = xy\qquad where\qquad x \in L_2\; and \; y \in L_2 - L_1$
$\implies x \in L_2$ and $y \in L_{2}$ but $y \notin L_1$

Now lets check if this is a subset or equal the right set.
Lets split the right side into $(L_2)^2$ and $L_2 * L_1$.
We need to check that $z \in (L_2)^2$ and $z \notin L_2 * L_1$.
$x,y \in L_2 \implies z \in (L_{2})^2$
$x \in L_2$ and $y \notin L_1$ $\implies z \notin L_2 * L_1$

Now lets show:
$(L_2)^2 - L_2 * L_1 \subseteq L_2 * (L_2 - L_1)$
Let $z \in (L_2)^2 - L_2 * L_1$.
$z = xy\qquad where\qquad x,y \in L_2\;  and\; z \notin L_{2} * L_1$
$z \notin L_{2} * L_1 \implies y \notin L_1$ because for $z$ to be in $L_2*L_1$ $y$ (the second element) needs to be in $L_1$.
Now with $x \in L_2$ and $y \in L_2 - L_{1}$
Now concatinating $x$ and $y$ we get the set $L_2 * (L_2 - L_1)$.
And because $z = xy$ we can say that $z \subseteq L_2 * (L_2 - L_1)$.

Since both inclusions are now proven because of definition we can say $L_{2} * (L_{2} - L_{1}) = (L_{2})^2 - L_{2} * L_{1}$.








1.a

To solve this, we use the principle of inclusion-exclusion.

It is known, that there are $|\Sigma|^n$ words of length $n$ over the alphabet $\Sigma$.

Now we need to subtract all words that are missing one letter, i.e. $w\in\Gamma^n$, where $\Gamma=\Sigma-\{s\}$ for some $s\in \Sigma$. Since these words consist of only two letters, there are $2^n

	•	Words that miss the letter  a : These words are made up of only  b  and  c . The number of such words is  2^n .
	•	Words that miss the letter  b : These words are made up of only  a  and  c , so there are also  2^n  such words.
	•	Words that miss the letter  c : These words are made up of only  a  and  b , which again gives  2^n  words.

By the inclusion-exclusion principle, the total number of words missing at least one letter is:

3 \times 2^n

since there are 3 possible letters to be missing.

Step 3: Add back words missing two letters

We’ve subtracted too much in the previous step because words that miss two letters (i.e., consist of only one letter) were subtracted multiple times.

	•	Words that consist only of  a ,  b , or  c : There are 3 such cases (all  a , all  b , or all  c ). For each of these, the number of such words is  1^n = 1 .

Thus, we add back:

3 \times 1^n = 3


Step 4: Apply inclusion-exclusion formula

By inclusion-exclusion, the total number of words that contain all three letters at least once is:

3^n - 3 \times 2^n + 3
