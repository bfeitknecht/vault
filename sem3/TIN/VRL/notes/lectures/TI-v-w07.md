
- encoding of TM


# Notes

homomorphism from $\mathrm{Code(\cdot)}$ to $\mathrm{Kod}(\cdot)$, i.e. alphabet $\{ 0, 1, \# \}$ to $\{ 0,1 \}$:
- write $1$ as $11$
- write $0$ as $00$
- write $\#$ as $01$ or $10$

how to enumerate "all programs" of X:
- enumerate over all words in alphabet of X
- test syntax correctness (with compiler, static analysis)
- whenever pass, increment lexicographical order counter

