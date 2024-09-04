

![[EProg-u03-e.pdf#page=2&rect=67,401,556,696|EProg-u03-e, p.2]]

```java
public int decode(String s) {
	
	return 0;
}
```


maximum number of `if` blocks == 9 (one for each possible pattern)


|       | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | total |
| ----- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ----- |
| $[a]$ |     | x   | x   |     | x   | x   | x   | x   | x   | 7     |
| $[b]$ | x   | x   | x   | x   |     |     | x   | x   | x   | 7     |
| $[c]$ | x   |     | x   | x   | x   | x   | x   | x   | x   | 8     |
| $[d]$ |     | x   | x   |     | x   | x   |     | x   | x   | 6     |
| $[e]$ |     | x   |     |     |     | x   |     | x   |     | 3     |
| $[f]$ |     |     |     | x   | x   | x   |     | x   | x   | 5     |
| $[g]$ |     | x   | x   | x   | x   | x   |     | x   | x   | 7     |
