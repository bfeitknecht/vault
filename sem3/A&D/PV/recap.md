
```java
void swap(int[] A, int i, int j) {
	int t = A[i];
	A[i] = A[j];
	A[j] = t;
}
```

swap two array variables without temporary variable
```java
void swap(int[] A, int i, int j) {
	A[i] ^= A[j];
	A[j] ^= A[i];
	A[i] ^= A[j];
}
```
