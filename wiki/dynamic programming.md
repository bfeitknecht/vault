
Let $F_n, n\in\N$ be the $n$-th [[fibonacci number]]. The [[recurrence relation]] is given by $F_{n} = F_{n-1} +F_{n-2}$ and is modelled by the following [[DAG]]:

```mermaid
flowchart TD


F5 --> F4
F5 --> F3
F4 --> F3
F4 --> F2
F3 --> F2
F3 --> F1
```

The recursive execution (call stack) of computing the function looks as follows:

```mermaid
flowchart TD


```




[decision parametrization](https://www.youtube.com/watch?v=gK8KmTDtX8E)
[from recurrence relation to iterative execution](https://www.youtube.com/watch?v=NA7u5GTh6fw)
