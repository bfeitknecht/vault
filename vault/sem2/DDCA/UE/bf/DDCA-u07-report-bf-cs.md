


```C
int abs_diff_color(int R1, int G1, int B1, int R2, int G2, int B2) {
	int abs_diff = abs(R1-R2) + abs(G1-G2) + abs(B1-B2);
	return abs_diff; }
```