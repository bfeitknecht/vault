
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


>[!quote] Definitions
>1. compute the probability that we surpass the target after n rounds
>$\mathrm{P}[X] \overset{?}{=} k > m_{n}$
>
>2. how many days correlates with (1.)
>$n \sim c$
>
>3. how close to target inversely correlates with (1.)
>$| m - k | \ \widehat{\sim} \ c$
>
>4. bet has to be a non-negative integer (can be zero)
>$b_{i} \in \mathbb N_{0}$
>
>5. compute partial probabilities (?)
>$\mathrm{P}[X_{i}] =$ "surpass $m$ at round $i$"

## Intuition
- when $p_{i}$ is high, bet high, else bet low \=> maximize win, minimize loss
- $b_{i} = \lfloor p_{i} |m-k| \rceil$, bet as much as possible when far from target, else bet less
- use dp to compute every possible sub problem
- $\mathrm{P}[X_{i}] \sim p_{1..i}$

	



