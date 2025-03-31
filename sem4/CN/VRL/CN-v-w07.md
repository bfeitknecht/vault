---
lecture: "[[CN]]"
prev: "[[CN-v-w06]]"
next: "[[CN-v-w08]]"
slides: []
---


# Info
- "Microsoft 1, Intel 0"


# Topics
- BPG
- gao-rexford rule

# Notes
- BGP does not allow for ingress path control
- configuring valley routing policies leads to bad convergence
- security considerations are simply absent from BGP specifications
	- AS can advertise any prefix, even ones it doesn't own
	- AS can arbitrarily modify route content, for instance content of AS-PATH
	- AS can forward traffic along different paths than advertised