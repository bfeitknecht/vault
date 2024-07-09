
```java
public static void testCase() {
	int n = In.readInt();    // days
	double k = In.readInt();    // have
	double m = In.readInt();    // want
	
	double[] p = new double[n];
	for (int i = 0; i < n; i++) {
		p[i] = In.readDouble();
	}
	
	double chance = 0.0;
	Out.println(chance);
}
```


n ~ chance
| m - k | /~ chance