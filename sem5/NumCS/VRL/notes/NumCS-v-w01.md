---
course: "[[NumCS]]"
prev: "[[NumCS]]"
next: "[[NumCS-v-w02]]"
tags: note/lecture/NumCS
slides:
  - "[[NumCS-s01-floating-error.pdf]]"
  - "[[NumCS-s02-polynomial-interpolation.pdf]]"
---


# Info
Professor will not budge on uploading lecture recordings before end of semester.


# Topics
- catastrophic cancellation
- complex step differentiation
- vector and matrix operations


# Notes
- rounding errors due to the implementation of floats
- stable computation for roots of quadratic polynomial
- power series approximation is rarely used in practice due to catastrophic cancellation
	- requires function to be differentiable around point of interest

- ignore useless entries in matrix multiplication to reduce number of operations
![[NumCS-s01-floating-error.pdf#page=19&rect=594,0,1132,608|NumCS-s01-floating-error, p.19|300]]
- [[kronecker product]], $\mathbf{A} \otimes \mathbf{B}$