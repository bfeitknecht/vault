
```java
public static void testCase() {
	int n = In.readInt();    // days
	double k = In.readInt();    // have
	double m = In.readInt();    // want
	double c = 0.0;		// chance
	
	double[] p = new double[n];
	for (int i = 0; i < n; i++) {
		p[i] = In.readDouble();
	}
	
	
	Out.println(c);
}
```

$n \sim c$
$| m - k | \ \widehat{\sim} \ c$ 
$\mathrm{P}[X_{i}] =$ "chance to surpass $m$ at round $i$"

## Intuition
- when p is high, bet high, else bet low \=> maximize win, minimize loss
- bet $p_{i}k$, that way $b \sim p_{i}$
- probability that k surpasses m is given by n, m, k and p_i
