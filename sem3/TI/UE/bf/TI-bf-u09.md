
Basil Feitknecht, 23-922-099,
Camil Schmid, 23-944-234,
Dennis Küenzi, 21-559-315




# 25 ![[TI-e-u09.pdf#page=1&rect=68,463,532,565|TI-e-u09, p.1]]


<div class="page-break" style="page-break-before: always;"></div>

# 26 ![[TI-e-u09.pdf#page=1&rect=68,400,532,422|TI-e-u09, p.1]]

## a) ![[TI-e-u09.pdf#page=1&rect=95,376,531,393|TI-e-u09, p.1]]

To prove is that for any two languages $L_{1}, L_{2} \in \mathrm{NTIME}(f)$ it holds that $L_{1} \cup L_{2} \in \mathrm{NTIME}(f)$. Notice that the given function $f$ is time-constructible, since it grows monotonically and is always greater or equal to its input.

By definition of $\mathrm{NTIME}$, it holds that there exist two non-deterministic MTM $M_{1}, M_{2}$ that accept the given languages, i.e. $L_{1} = L(M_{1})$ and $L_{2} = L(M_{2})$. Then it holds that $\mathrm{Time}_{M_{1}}(n), \mathrm{Time}_{M_{2}}(n) \in O(f(n))$. This is defined as the duration of the longest computation on all inputs of length $n$.

Then we construct another don-deterministic MTM $M$ that accepts the union of the two languages, i.e. $L(M) = M_{1} \cup M_{2}$. To do this, $M$ non-deterministically simulates $M_{1}$ and $M_{2}$ on some input $x$ of length $n$. If there exists an accepting computation on the input, i.e. either $M_{1}$ or $M_{2}$ accepts, then $M$ accepts $x$


By construction we have $\mathrm{Time}_{M}(n) = \max\{ \mathrm{Time}_{M_{1}}(n), \mathrm{Time}_{M_{2}}(n) \}$. Thus it follows that $\mathrm{Time}_{M}(n) \in O(f(n))$ and hence $L_{1} \cup L2 \in \mathrm{NTIME}(f)$. Informally it can be argued that a non-deterministic MTM that accepts the union of the two languages takes at most as long as the longer one of the two non-deterministic MTM that accept either one. Since this is still within the bounds of the space complexity class defined by $f$, the union of the languages is in the same time complexity class.
$\square$


## b) ![[TI-e-u09.pdf#page=1&rect=96,350,532,368|TI-e-u09, p.1]]


The problem isn't any easier, hence the language is still in the larger class namely non-deterministic time complexity.


<div class="page-break" style="page-break-before: always;"></div>

# 27 ![[TI-e-u09.pdf#page=1&rect=68,249,530,281|TI-e-u09, p.1]]


diagonalizaion argument?