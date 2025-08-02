---
lecture: "[[CN]]"
prev: "[[CN-v-w07]]"
next: "[[CN-v-w09]]"
tags: []
slides:
  - "[[CN-s11-link-layer-protocols.pdf]]"
  - "[[CN-s12-link-layer-coding.pdf]]"
  - "[[CN-s13-physical-layer.pdf]]"
---


# Info
- "It's okay that it's not so great."


# Topics
- switches
- physical layer
- framing methods
	- byte count
	- byte stuffing
	- bit stuffing
- error detection
- error correction
	- hamming code


# Notes
![[CN-s12-link-layer-coding.pdf#page=6&rect=125,107,706,422|CN-s12-link-layer-coding, p.6]] 
- framing methods define, how to differentiate frames on the physical layer
	- naive idea, just count bytes
		- error prone, difficult to resynchronize after framing error
	- byte stuffing, special flag byte value that indicates start/end of frame
    	- escape indicator and escape byte inside the payload
    	- `FLAG -> ESC FLAG`, `ESC -> ESC ESC` 
	- bit stuffing applies same idea on bit level
- bit stuffing has better worst case overhead than byte stuffing but pretty much same average
- code with hamming distance $d + 1$ allows detection of up to $d$ errors
- hamming distance $2d + 1$ allows for up to $d$ errors to be corrected, mapping to the closest code word
- internet checksum is negated one's complement sum (add carry back) of 16bit words 
- error detection needed for high bit error rate (BER) or there's no time for retransmission
- error detection more efficient when errors are not expected and are large when they do occur
- ethernet frame uses CRC-32 for error detection, no ACK or retransmission

## Hamming Code
![[CN-s12-link-layer-coding.pdf#page=66&rect=84,94,652,433|CN-s12-link-layer-coding, p.66|300]]
- hamming code encoding
	- check bits at binary powers
    	- cover data bits at positions with that binary power set
	- correspond to parity of data bits covered
- decoding is simple
	- recompute check bits (with parity sum including check bit)
	- arrange as binary number whose value (syndrome) tells error position

## CRC
- uses generator polynomials $p(x) \in \mathrm{GF}(2)[x]$ of degree $n$