



![[DDCA-u07-manual.pdf#page=7&rect=168,527,445,585|DDCA-u07-manual, p.7]]
\*\_image\[\*] = in range 0, 16



**Make sure that the data segment in your memory starts at address 0x00000000!** 

![[DDCA-u07-manual.pdf#page=7&rect=230,169,386,430|DDCA-u07-manual, p.7]]

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


