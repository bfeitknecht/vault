
Let $F_n, n\in\N$ be the $n$-th [[fibonacci number]]. The [[recurrence relation]] is given by $F_{n} = F_{n-1} +F_{n-2}$ and is modelled by the following [[DAG]]:

```mermaid
flowchart TD


F4 --> F3 & F2
F3 --> F2 & F1
```

The recursive execution (call stack) of computing the function is modelled by the following [[tree]]:

```mermaid
flowchart TD

f1
f2
f3
f

F4 -->
F3 --> F2 & F1

```




[decision parametrization](https://www.youtube.com/watch?v=gK8KmTDtX8E)
[from recurrence relation to iterative execution](https://www.youtube.com/watch?v=NA7u5GTh6fw)
