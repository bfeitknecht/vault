
swap two array variables without temporary variable
```java
void swap(int[] A, int i, int j) {
	A[i] ^= A[j];
	A[j] ^= A[i];
	A[i] ^= A[j];
}
```


toggle boolean variable
```java
boolean toggle = false;
toggle ^= true;	// toggle == true
toggle ^= true; // toggle == false
```




Prove $n^{100} \ll 1.01^{n}$.

Let $f(n) = 1.01^{n}$ and $g(n) = n^{100}$. Then we compute $\lim_{ n \to \infty } \frac{g(n)}{f(n)}$. L'Hôpital yields $\lim_{ n \to \infty } \frac{g(n)}{f(n)} = \lim_{ n \to \infty } \frac{1.01^{n} \ln(n)}{100n^{99}}$
