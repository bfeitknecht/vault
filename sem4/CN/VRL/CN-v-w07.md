---
lecture: "[[CN]]"
prev: "[[CN-v-w06]]"
next: "[[CN-v-w08]]"
tags: 
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
- automatic repeat request
- link multiplexing


# Notes
- BGP does not allow for ingress path control
- configuring valley routing policies leads to bad convergence
- security considerations are simply absent from BGP specifications
    - AS can advertise any prefix, even ones it doesn't own
    - AS can arbitrarily modify route content, for instance content of AS-PATH
    - AS can forward traffic along different paths than advertised
 
- link multiplexing has two strategies
	- time division multiplexing (TDM), users take turn on fixed schedule
	- frequency division multiplexing (FDM), different users on different frequency
	- suited for continuous traffic, fixed number of users like voice or video streaming
	- used in telecommunication where transmission rate is regular
- these two strategies have different time / rate diagrams ![[CN-s11-link-layer-protocols.pdf#page=12&rect=85,130,519,336|CN-s11-link-layer-protocols, p.12|300]]
- multiple access control determines how to multiples users according to needs
	- ALOHA protocol
		- just send when have traffic
		- if there was collision (no ACK), wait random time until resend16 * 7*