
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

X :\= 

intuition:

when p is high, bet high, when p is low, bet low
\=> maximize win, minimize loss

probability that k surpasses m is given by n, m, k and p_i
