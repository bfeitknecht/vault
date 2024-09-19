
Let $F_n, n\in\N$ be the $n$-th fibonacci number. The [[recurrence relation]] can be defined as follows,
$$
F_{n} = F_{n-1} +F_{n-2}
$$
and is modelled by the following [[DAG]],

```mermaid
flowchart TD

F4 --- F2 & F3
F3 --- F1 & F2
```





[decision parametrization](https://www.youtube.com/watch?v=gK8KmTDtX8E)
[from recurrence relation to iterative execution](https://www.youtube.com/watch?v=NA7u5GTh6fw)
