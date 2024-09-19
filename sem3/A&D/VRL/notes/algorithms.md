
# What are algorithms?

Algorithms solve (hard) problems by systematically solving easier subproblems consisting of [[elementary-operation]]s.



## Pasture Break
![[pasture-break.png]]

#### Problem
Cow wants to escape through a hole in an infinite fence, what is the best strategy to take the least amount of steps to reach the hole?

#### Idea
- ~~could just choose a direction and keep walking~~ --> only works half the time
- walk a step one way, two stes the other, keep switching directions while walking one more step --> in the worst case $\frac{k(k+1)}{2}$ steps are taken
- dito, but double the steps every time we switch directions --> in the worst case $2(2^{i+1}-1)+k$ steps are taken


## Karatsuba

Algorithm to multiply two $n$ digit numbers, instead of grade-schoo-algorithm which is $\bigo(n^2)$

