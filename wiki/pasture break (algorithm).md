
![[pasture break (algorithm)-72E5E20F76405E8EF1CC7C33FC756F4B.png]]

## Problem
Cow wants to escape through a hole in an infinite fence, what is the best strategy to take the least amount of steps to reach the hole?

## Idea
- ~~could just choose a direction and keep walking~~ --> only works half the time
- walk a step one way, two stes the other, keep switching directions while walking one more step --> in the worst case $\frac{k(k+1)}{2}$ steps are taken
- dito, but double the steps every time we switch directions --> in the worst case $2(2^{i+1}-1)+k$ steps are taken

