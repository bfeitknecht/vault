
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




4 2 33
0.25 0.5 0.75 1.0
5 2 20
0.3 0.5 0.2 0.7 1.0

### Sample Case 1
```
n=2	// days
k=2	// have
m=8	// want
p=[0.5 0.5]
```
The only way to reach 8 is to bet all you have on each day.

### Sample Case 2
There is no way to reach 33 in only four days.

### Sample Case 3
An optimal strategy is to bet 2 on the first day, 1 on the second day (unless you are broke). If you win on the second day, you bet 0 on the third day, and bet all you have on the remaining two days. If your lose on the second day, you bet all you have on the remaining three days.



