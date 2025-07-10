
![[W&S-script-1.pdf#page=43&rect=131,506,498,595|W&S-script-1, p.42]]

A [[continuous]] [[random variable]] $X \sim \mathcal{U}([a, b])$ that exhibits **uniform distribution** on $[a, b]$ describes a point in the [[interval]] uniformly chosen. Its relevant definitions are given below.

| Function                          | Definition                                                                                                 |
| --------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| [[probability density\|PDF]]      | $f_{a, b}(x) = \begin{cases} \frac{1}{b-a} & x \in [a, b] \\ 0 & \text{ otherwise}\end{cases}$             |
| [[probability distribution\|CDF]] | $F_{X}(x) = \begin{cases}0 & x < a \\ \frac{x-a}{b-a} & x \in [a, b] \\ 1  & \text{otherwise} \end{cases}$ |
| [[expectation]]                   | $\Ex[X] = \frac{a+b}{2}$                                                                                   |
| [[variance]]                      | $\Var[X] = \frac{(b-a)^{2}}{12}$                                                                           |
