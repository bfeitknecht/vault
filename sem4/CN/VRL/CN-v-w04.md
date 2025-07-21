---
lecture: "[[CN]]"
prev: "[[CN-v-w03]]"
next: "[[CN-v-w05]]"
tags: 
slides:
  - "[[CN-s07-QUIC.pdf]]"
  - "[[CN-s08-network-layer.pdf]]"
---


# Info


# Topics
- QUIC
- [[network layer]]
- virtual circuit
- [[network address translation]]
- [[internet protocol]]
- [[internet control message protocol]]


# Notes
- datagram is pass along strategy (connectionless)
- every packet is handled separately by routers based on current state
    - can lead to reordering and packet delay or packet loss
- virtual circuit is connection oriented
	- requires additional state in packet header and setup time
	    - faster routing
- IP packet contains TTL in header to eliminate potential problem of cycle in network, leading to congestion
    - decremented on every hop and every second in buffer
    - longest time for any packet sent through the internet is 255 seconds
    - why still have loops today?
- path MTU discovery tries to avoid fragmentation
	- host tests path with large packet and don't fragment (DF) flag set
	- routers provide feedback if too large and indicate what size would fit
	- standard exists to convey in ICMP messages but not implemented in practice because of security
	- just use heuristic approach
