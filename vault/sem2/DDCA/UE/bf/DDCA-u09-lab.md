

## Manual

![[DDCA-u09-manual.pdf#page=2&rect=85,437,528,518|DDCA-u09-manual, p.2]]

![[DDCA-u09-manual.pdf#page=2&rect=85,259,528,331|DDCA-u09-manual, p.2]]
![[DDCA-u09-manual.pdf#page=2&rect=105,220,527,260|DDCA-u09-manual, p.2]]
![[DDCA-u09-manual.pdf#page=3&rect=105,636,527,723|DDCA-u09-manual, p.3]]
Make sure that other instructions are not affected.



![[DDCA-u09-manual.pdf#page=3&rect=86,490,528,578|DDCA-u09-manual, p.3]]

![[DDCA-u09-manual.pdf#page=3&rect=85,138,528,243|DDCA-u09-manual, p.3]]

![[DDCA-u09-manual.pdf#page=3&rect=86,81,526,109|DDCA-u09-manual, p.3]]
![[DDCA-u09-manual.pdf#page=4&rect=86,678,527,722|DDCA-u09-manual, p.4]]



<div class="page-break" style="page-break-before: always;"></div>
# Report



## (1)
![[DDCA-u09-report.pdf#page=1&rect=88,287,525,357|DDCA-u09-report, p.1]]
![[DDCA-u09-report.pdf#page=1&rect=87,178,537,286|DDCA-u09-report, p.1]]


```asm
.text
main:
	addi $s0, $0, 5 		# A = 0
	addi $s1, $0, 32767 	# B = 8
	addi $s1, $s1, 1 		# B = B + 1
	addi $t2, $0, 0 		# S = 0
	slt $t1, $s0, $s1 		# $t1 = A < B ? 1 : 0
	beq $t1, $0, end 		# If A > B, jump to end
	j loop 					# Jump to loop

loop:
	beq $s0, $s1, end 		# If A == B, jump to end
	add $t2, $t2, $s0 		# S = S + A
	addi $s0, $s0, 1 		# A = A + 1
	j loop 					# jump to loop

end:
	j end					# Infinite loop at the end of the program.
```



<div class="page-break" style="page-break-before: always;"></div>

## (2)
![[DDCA-u09-report.pdf#page=2&rect=88,608,525,653|DDCA-u09-report, p.2]]
![[DDCA-u09-report.pdf#page=2&rect=88,501,536,607|DDCA-u09-report, p.2]]


```asm
.text
main:
	addi $t0, $0, 0		# $t0 = A
	addi $t1, $0, 200	# $t1 = B
	addi $t2, $t0, -1	# A-1
	multu $t0, $t2		# A (A-1)
	mflo $t0			# mult result in t0
	srl $t0, $t0, 1		# divide by two
	
	addi $t2, $t1, 1	# B+1
	multu $t1, $t2		# B (B+1)
	mflo $t1			# mult result in t1
	srl $t1, $t1, 1		# divide by two
	sub $t2, $t1, $t0	# end result is the difference

end:
	j end				# loop t2 is the result
```


<div class="page-break" style="page-break-before: always;"></div>

## (3)
![[DDCA-u09-report.pdf#page=2&rect=86,321,527,365|DDCA-u09-report, p.2]]

c

