
- complexity theory
	- time complexity
	- space complexity


# Notes

For every k-MTM that **always halts** $A$ there exists a 1-MTM $B$ such that $\mathrm{Space}_{A}(n) \leq \mathrm{Space}_{B}(n)$. This is because we only care about the maximum amount of memory that we need.

Lemma 5.3, $L_{1} \leq_{\mathrm{EE}} L_{2} \implies L_{1} \leq_{\mathrm{R}} L_{2}$


useful languages and language classes:


$\mathcal{L}_{\mathrm{R}} = \{  L \mid \text{exists TM } M \text{ s.t. } L(M)=L \text{ and } M \text{ halts on every input}\}$ 
$L_{\mathrm{H}} = \{ \mathrm{Kod}(M)\#w\in \Sigma^{*}_{\mathbb{B}} \mid M \text{ halts on } w \}$





![[hromkovic-TI.pdf#page=152&rect=44,480,428,617|hromkovic-TI, p.139]]
