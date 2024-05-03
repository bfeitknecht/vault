
| $n$ | $p_{i}$ | $r_i$ |
| --- | ------- | ----- |
| 1   | 0.3     | 0.7   |
| 2   | 0.7     | 0.2   |
| 3   | 0.8     | 0,8   |
| 4   | 0.2     | 0.3   |
|     |         |       |


```mermaid
flowchart TD

id1((1))-->|"(1-p1)*p2"|id2((2))
id1-->|"p1"|id3((p1))
id3-->|"p1*r1"|id4((r1))
id3-->|"(1-r1)*p2"|id2
id4-->|"p1*r1*p2"|id2



```

```java
double exp_not_taken = 0;
for (int i = 0; i < n; i++) {
	exp_not_taken += 1 - (P[i] * R[i]);
}
return exp_not_taken;
```

