
## q1
- easy, just multiply even indexed probabilities with 1/6 and add it all up



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
