
# Ex. 3
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




# Ex. 5
![[EProg-u03-e.pdf#page=3&rect=64,341,548,696|EProg-u03-e, p.3]]

```
let l = s.length()

l == 1 => "
+---+
| 0 |
+---+
"

l == 2 => "
+---+---+
| 0 | 1 |
+---+---+
| 1 | 0 |
+---+---+
"

l >= 3 => "
+---+---+---+---+
| 0 | . | . | n |
+---+---+---+---+
| . |       | .
+---+---+---+---+
| n | . | 0 | .
+---+---+---+---+
"



```

```java
public void flag(String s) {
	int l = s.length();
	int n = l-1;
	String flag = "";
	
	if (l==1) {
		flag += divider(l);
		flag += "| " + s + " |\n";
		flag += divider(l);
	}
	
	System.out.prinln(flag);
}

public String divider(int n) {
	String divider = "";
	for (int i = 0; i < n; i++) {
		divider += "+---";
	}
	divider += "+\n";
	return divider;
}

public String cell(String s) {
	String cell = "| " + s;
	if (c.length()==1) cell += " |";
	return cell;
}

```