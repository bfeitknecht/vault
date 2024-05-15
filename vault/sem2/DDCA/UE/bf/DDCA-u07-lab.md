
# Part 1
## Gaussian Sum
![[DDCA-u07-manual.pdf#page=1&rect=87,104,528,157|DDCA-u07-manual, p.1]]
![[DDCA-u07-manual.pdf#page=2&rect=87,250,334,264|DDCA-u07-manual, p.2]]

## Solution
```
.text
main:
	addi $s0, $0, 5 		# A = 5
	addi $s1, $0, 32767 	# B = 32767
	addi $s1, $s1, 1 		# B = B + 1
	addi $t2, $0, 0 		# S = 0
	j loop 					# Jump to loop

loop:
	beq $s0, $s1, end 		# If A == B, jump to end
	add $t2, $t2, $s0 		# S = S + A
	addi $s0, $s0, 1 		# A = A + 1
	j loop 					# jump to loop

end:
	j end					# Infinite loop at the end of the program.
```





___
# Part 2
## SAD Algorithm
![[DDCA-u07-manual.pdf#page=5&rect=113,192,500,342|DDCA-u07-manual, p.5]]
![[DDCA-u07-manual.pdf#page=6&rect=208,575,402,723|DDCA-u07-manual, p.6]]
![[DDCA-u07-manual.pdf#page=6&rect=89,482,523,516|DDCA-u07-manual, p.6]]
>[!quote] Make sure that the data segment in your memory starts at address 0x00000000!


**C code for the SAD algorithm**
```c
// Implementation of the absolute value of differences
int abs_diff(int pixel_left, int pixel_right) {
	int abs_diff = abs(pixel_left - pixel_right);
	return abs_diff;
}

// Recursive sum of a vector
int recursive_sum(int arr[], int size) {
	if(size == 0) return 0;
	else return recursive_sum(arr, size-1) + arr[size-1];
} 

// main function
int main() {
	int sad_array[9];
	int image_size = 9; // 3x3 image
	
	// These vectors must be stored in memory
	int left_image[9] = {5, 16, 7, 1, 1, 13, 2, 8, 10};
	int right_image[9] = {4, 15, 8, 0, 2, 12, 3, 7, 11};
	
	for (i = 0; i < image_size; i++) {
		sad_array[i] = abs_diff(left_image[i], right_image[i]);	
	}
	
	sad_value = recursive_sum(sad_array, image_size);
}
``` 
![[DDCA-u07-manual.pdf#page=9&rect=22,455,592,709|DDCA-u07-manual, p.9]]
![[DDCA-u07-manual.pdf#page=7&rect=168,527,445,585|DDCA-u07-manual, p.7]]





___
# Part 3 (Report)
## Multiple Function Parameters
```C
int abs_diff_color(int R1, int R2, int B1, int B2, int G1, int G2) {
	int abs_diff = abs(R1-R2) + abs(G1-G2) + abs(B1-B2);
	return abs_diff;
}
```
![[DDCA-u07-report.pdf#page=2&rect=87,637,528,721|DDCA-u07-report, p.2]]
![[DDCA-LAB07-asm.pdf#page=23&rect=115,112,608,386|DDCA-LAB07-asm, p.23]]












```C
int abs_diff(int l, int r) {
	int abs_diff = abs(l - r);
	return abs_diff;
}
```
```
# Absolute difference between two integers
# $a0 = l
# $a1 = r
abs_diff:
	sub $t1, $a0, $a1 	# Subtract second integer from first integer
	sra $t2, $t1, 31 	# Arithmetic right shift to get sign of the difference
	xor $t1, $t1, $t2 	# XOR to flip the sign if necessary
	sub $v0, $t1, $t2 	# Subtract flipped sign from difference to get absolute difference
	jr $ra 				# Return to the calling function

```