

![[EProg-u03-e.pdf#page=2&rect=67,401,556,696|EProg-u03-e, p.2]]

|       | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | total |
| ----- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ----- |
| $[a]$ |     | x   | x   |     | x   | x   | x   | x   | x   | 7     |
| $[b]$ | x   | x   | x   | x   |     |     | x   | x   | x   | 7     |
| $[c]$ | x   |     | x   | x   | x   | x   | x   | x   | x   | 8     |
| $[d]$ |     | x   | x   |     | x   | x   |     | x   | x   | 6     |
| $[e]$ |     | x   |     |     |     | x   |     | x   |     | 3     |
| $[f]$ |     |     |     | x   | x   | x   |     | x   | x   | 5     |
| $[g]$ |     | x   | x   | x   | x   | x   |     | x   | x   | 7     |

## Simple

`if` block for each possible pattern => max 9

```java
public int decode(String s) {
	boolean a = s.contains("a");
	boolean b = s.contains("b");
	boolean c = s.contains("c");
	boolean d = s.contains("d");
	boolean e = s.contains("e");
	boolean f = s.contains("f");
	boolean g = s.contains("g");
	
	if (b && c) return 1;
	if (a && b && d && e && g) return 2;
	if (a && b && c && d && g) return 3;
	if (b && c && f && g) return 4;
	if (a && c && d && f && g) return 5;
	if (a && c && d && e && f && g) return 6;
	if (a && b && c) return 7;
	if (a && b && c && d && e && f && g) return 8;
	if (a && b && c && d && f && g) return 9;
	
	return 0;
}
```

