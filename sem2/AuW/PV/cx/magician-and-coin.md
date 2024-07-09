
```java
public static void testCase() {
	int n = In.readInt();    // days
	double k = In.readInt();    // have
	double m = In.readInt();    // want
	double c = 0.0;		// chance
	
	double[] p = new double[n];
	for (int i = 0; i < n; i++) {
		p[i] = In.readDouble();
		double b = p[i] * Math.min(Math.abs(m - k), k);
	}
	
	
	Out.println(c);
}
```

$n \sim c$				how many days correlates with how likely to surpass target
$| m - k | \ \widehat{\sim} \ c$		how close to target inversely correlates with dito 
$b_{i} \in \mathbb N_{0}$				bet has to be an integer
$\mathrm{P}[X_{i}] =$ "surpass $m$ at round $i$"

## Intuition
- when p is high, bet high, else bet low \=> maximize win, minimize loss
- $b_{i} = p_{i}\min(|m-k|, k)$, so bet less when close to target
- probability that k surpasses m is given by n, m, k and p_i
