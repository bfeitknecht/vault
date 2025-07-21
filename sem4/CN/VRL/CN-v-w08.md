---
lecture: "[[CN]]"
prev: "[[CN-v-w07]]"
next: "[[CN-v-w09]]"
tags: []
slides:
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
- in order to avoid possible endless packet forwards, switches build spanning tree of the network topology
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