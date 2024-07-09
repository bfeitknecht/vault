
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

$\mathrm{P}[X] \overset{?}{=} k > m$

how many days correlates with how likely to surpass target
$n \sim c$

how close to target inversely correlates with dito 
$| m - k | \ \widehat{\sim} \ c$

bet has to be an integer
$b_{i} \in \mathbb N_{0}$

$\mathrm{P}[X_{i}] =$ "surpass $m$ at round $i$"


## Intuition
- when $p_{i}$ is high, bet high, else bet low \=> maximize win, minimize loss
- $b_{i} = p_{i}\min(|m-k|, k)$, so bet less when close to target
