


```C
int abs_diff_color(int R1, int G1, int B1, int R2, int G2, int B2) {
	int abs_diff = abs(R1-R2) + abs(G1-G2) + abs(B1-B2);
	return abs_diff;
}
```



```
# Absolute difference between two integers
abs_diff:
	sub $t1, $a0, $a1 	# Subtract second integer from first integer
	sra $t2, $t1, 31 	# Arithmetic right shift to get sign of the difference
	xor $t1, $t1, $t2 	# XOR to flip the sign if necessary
	sub $v0, $t1, $t2 	# Subtract flipped sign from difference to get absolute difference
	jr $ra 				# Return to the calling function

```