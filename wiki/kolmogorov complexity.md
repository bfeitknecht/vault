#todo 

The **kolmogorov complexity** of some [[word]] measures the length of the shortest [[program]] that generates that word.

There exists no simple program that can compute the exact kolmogorov complexity for an infinite amount of words.

# Intuition

Consider the following two [[word|words]] of 32 lowercase letters and digits:
`abababababababababababababababab`, and `4c1j5b2p0cv4w1x8rx2y39umgw5q85s7`.

The first string has a short English-language description, namely "write ab 16 times", which consists of 17 characters. The second one has no obvious simple description (using the same character set) other than writing down the string itself, i.e., "write 4c1j5b2p0cv4w1x8rx2y39umgw5q85s7" which has 38 characters. Hence the operation of writing the first string can be said to have "less **complexity**" than writing the second.

# Example

![[mandelbrot-red.png]]

This image illustrates part of the Mandelbrot set fractal. Simply storing the 24-bit color of each pixel in this image would require 23 million bytes, but a small computer program can reproduce these 23 MB using the definition of the Mandelbrot set and the corner coordinates of the image. Thus, the Kolmogorov complexity of this image is much less than 23 MB in any pragmatic model of computation. PNG's general-purpose image compression only reduces it to 1.6 MB, smaller than the raw data but much larger than the Kolmogorov complexity.

