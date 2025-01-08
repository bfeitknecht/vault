
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
	replace root with last leaf
	restore heap condition

`insert(n)`
	add `n` as last leaf
	restore heap condition by iteratively swapping up if greater than parent

## BST (binary search tree)

`remove(n)`
	- replace `n`with symmetric successor
	- left subtree's rightmost child or right subtree's leftmost child

## AVL (balanced BST)

The AVL condition states that left and right subtrees' height differ by at most one, $|h_{l} - h_{r}| \leq 1$.



