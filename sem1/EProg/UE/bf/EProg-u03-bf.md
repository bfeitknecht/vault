
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
| 0 | . | … | n |
+---+---+---+---+
| . |       | … |
+---+  *\s  +---+
| … |       | . |
+---+---+---+---+
| n | … | . | 0 |
+---+---+---+---+
"

```


```java
public void flag(String s) {
	int n = s.length();
	if (n==0) {
		System.out.println("+");
		return;
	}
	
	String flag = "";
	
	if (n>3) {
		flag += divider(n) + "\n";
		for (int i = 0; i < n; i++) {
			flag += cell(s) + "\n";
		}
		flag += divider(n) + "\n";
	}
	else {
		// spacer
		String spacer = "   ";	// 3 space
		for (int i = 0; i < n-3; i++) {
			spacer += "    ";	// 4 space
		}
		
		// upper strip
		flag += divider(n) + "\n";
		flag += cell(s) + "\n";
		flag += divider(n) + "\n";
		
		// inner strips
		for (int i = 1; i < n-2; i++) {
			flag += cell((String)s.charAt(i));
			flag += space;
			flag += cell((String)s.charAt(n-i-1));
			flag += "\n";
		}
		
		// lower strip
		flag += divider(n) + "\n";
		flag += cell(reverse(s)) + "\n";
		flag += divider(n) + "\n";
	}
	
	System.out.prinln(flag);
}

public String divider(int n) {
	String divider = "";
	for (int i = 0; i < n; i++) {
		divider += "+---";
	}
	divider += "+";
	return divider;
}

public String cell(String s) {
	String cell = "";
	for (char c : s) {
		cell += "| " + c;
	}
	cell += " |";
	return cell;
}

public String reverse(String s) {
	return new StringBuilder(str).reverse().toString();
}
```

	