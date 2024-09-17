

![[EProg-u02-e.pdf#page=2&rect=78,130,548,349|EProg-u02-e, p.2]]

```java
public int f(int a, int b) {
	if (a/10 == b/10 || a/10 == b%10) {
		return a/10;
	}
	if (a%10 == b/10 || a%10 == b%10) {
		return a%10;
	}
	return -1;
}
```


