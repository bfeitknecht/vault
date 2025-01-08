
# Exams

- [x] HS18 ✅ 2025-01-08
- [ ] FS19
- [ ] HS19
- [ ] FS20
- [ ] HS20
- [ ] FS21
- [ ] HS21
- [ ] FS22
- [ ] HS22
- [ ] FS23
- [ ] HS23
- [ ] mock exam


# Misc

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




# ADT (abstract data types)

## Heap

`extract()`
- replace root with last leaf
- restore heap condition

`insert(n)`
- add as last leaf
- restore heap condition by iteratively swapping up if greater than parent

## BST (binary search tree)

