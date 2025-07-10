```desmos-graph
y1 = 1 / x
y2 = x
```
maybe there is another dimension to numbers that allows for division by zero?

- mobile computing? ask janis harms



---


restrict the kernel through evaluation
do something with the cokernel




Let $\pi_{x} : \mathrm{SL}(n, \mathbb{Z}[x]) \to \mathrm{SL}(n, \mathbb{Z})$ which *reduces* an element $\pi_{x}(A) \mapsto A[x \mapsto 0]$, substituting the indeterminate with zero. Then, let $\Gamma(X) = \ker (\pi_{x}) = [I_{n}]_{\equiv_{X\mathbb{Z}[x]}}$, i.e. the equivalence class of the identity matrix. Now $\widetilde{\Gamma}(N) = \Gamma(X) \big|_{x=N}$ is the set of its evaluations at $N$. Finally, is $\widetilde{\Gamma}(N) = \Gamma(N) = [I_{n}]_{\equiv_{N\mathbb{Z}}}$? It holds true for $N \leq 8$.


---



```typst
= Fibonacci sequence
The Fibonacci sequence is defined through the
_recurrence relation_ $F_n = F_(n-1) + F_(n-2)$.
It can also be expressed in closed form:

$ F_n = floor(1 / sqrt(5) phi.alt^n), quad
  phi.alt = (1 + sqrt(5)) / 2 $

#let count = 10
#let nums = range(1, count + 1)
#let fib(n) = (
  if n <= 2 { 1 }
  else { fib(n - 1) + fib(n - 2) }
)

The first #count numbers of the sequence are:

#align(center, table(
  columns: count,
  ..nums.map(n => $F_#n$),
  ..nums.map(n => str(fib(n))),
))

```​

