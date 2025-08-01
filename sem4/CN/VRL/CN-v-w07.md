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
		- if there was collision (no ACK), wait random time until resend
- carrier sense multiple access (CSMA) improved ALOHA by listening for activity before send
	- easy with wire, not so much with wireless
    - still possible for collision to occur because of delay
- CSMA/CD reduces cost of collisions through detection and abort rest of frame
	- impose minimum frame size so node can't finish send before collision
	- multiple waiting nodes will queue up then collide – more load, more problems
	- binary exponential backoff (BEB) is easy solution that doubles wait interval for successive collision

- wireless comes with complications
	- nodes may have different coverage – doesn't fit carrier sense
	- nodes can't hear while sending – no collision detection
- wireless signal is received if broadcast nearby and sufficient signal to noise ration (SNR)
	- hidden terminals *can't* hear each other (to coordinate) yet may collide
    	- want to avoid inefficiency of collisions
	   ![[CN-s11-link-layer-protocols.pdf#page=40&rect=145,118,667,298|CN-s11-link-layer-protocols, p.40|300]]
	- exposed terminals *can* hear each other yet don't collide
    	- want to send concurrently to increase performance
	   ![[CN-s11-link-layer-protocols.pdf#page=41&rect=110,125,633,317|CN-s11-link-layer-protocols, p.41|300]]
- multiple access with collision avoidance (MACA)
	- sender transmits request to send (RTS) with frame length
	- receiver replies with clear to send (CTS) with frame length
	- sender transmits frame while nodes hearing CTS stay silent
		- collisions on RTS/CTS still possible but less likely

- in order to avoid possible endless packet forwards, switches build spanning tree of the network topology
- switch connection requires distributed zero knowledge spanning tree algorithm
	- any topology with no configuration
	- adapt to link/switch failures
		- initially, every switch believes it's the root
		- send periodic updates to neighbors with address, root address and distance to root in hops
		- switches favor ports with shorter distance to lowest root and use lowest address as tiebreaker