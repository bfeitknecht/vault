
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


