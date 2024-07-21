
## q1

>[!idea] easy
>just multiply even indexed probabilities with 1/6 and add it all up

```java
for (int i = 1; i < 6; i+=2) {
  double chance = (1.0/6.0) * p[i];
  result += chance;
}
```

___

## q2

>[!idea] okay
>just use bayes theorem, multiply and divide it out

```java
double B = 0;
for (int i = 0; i < 6; i++) {
  B += p[i] * p[5-i];
}
double A = p[2] * p[3];
result = A / B;
```

___

## q3

need dynamic programming

```java
// expected square after n turns
// expected turns until square n
```



