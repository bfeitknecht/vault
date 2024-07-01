
## q1
- easy, just multiply even indexed probabilities with 1/6 and add it all up
```java
for (int i = 1; i < 6; i+=2) {
  double chance = (1.0/6.0) * p[i];
  result += chance;
}
```

## q2

- just use bayes theorem
```java
double B = 0;
for (int i = 0; i < 6; i++) {
  B += p[i] * p[5-i];
}
double A = p[2] * p[3];
result = A / B;
```



## q3
- need the expected value but with different probabilities for each number
- idea: compute expected value after one round and then solve for n

>[!idea]
>use dynamic programming, try everything but memoize

