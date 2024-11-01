
- encoding of TM
- non-recursive language by diagonalization argument
- reductions


# Notes

homomorphism from $\mathrm{Code(\cdot)}$ to $\mathrm{Kod}(\cdot)$, i.e. alphabet $\{ 0, 1, \# \}$ to $\{ 0,1 \}$:
- write $1$ as $11$
- write $0$ as $00$
- write $\#$ as either $01$ or $10$

how to enumerate "all programs" of X:
- enumerate over all words in alphabet of X
- test syntax correctness (with compiler, static analysis)
- whenever pass, increment lexicographical order counter

diagonalization argument to show that there is a language $L_{\text{diag}}$ with no TM, i.e. $l_{\text{diag}} \not\in \mathcal{L}_{\text{RE}}$.
- assume there exists a TM $M$ s.t. $L(M) = L_{\text{diag}}$
- let $M=M_{i}$ be the canonical $i$-th TM
- let $w_{i}$ be the canonical $i$-th word
- contradiction: $w_{i}$ can't be in $L(m_{i})$ and $L_{\text{diag}}$ per definition

TM only has one accepting state and one rejecting state!!
this is because after we reach one of those states, we stop the computation

recus