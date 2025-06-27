---
lecture: "[[CN]]"
prev: "[[CN-v-w06]]"
next: "[[CN-v-w08]]"
slides:
  - "[[CN-s10-BGP.pdf]]"
  - "[[CN-s11-link-layer-protocols.pdf]]"
---


# Info
- "Microsoft 1, Intel 0."
- "Tier 1 networks are those networks that don't pay any other network for transit yet still can reach all networks connected to the internet."


# Topics
- BPG
- gao-rexford rule
- ethernet
- wireless

# Notes
- BGP does not allow for ingress path control
- configuring valley routing policies leads to bad convergence
- security considerations are simply absent from BGP specifications
	- AS can advertise any prefix, even ones it doesn't own
	- AS can arbitrarily modify route content, for instance content of AS-PATH
	- AS can forward traffic along different paths than advertised