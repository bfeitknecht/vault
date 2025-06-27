

# Network Layers
Computer networks can be broken down into five layers that provide different services. Each layer provides a service to the layer above by using the services of the layer directly below it.

| Layer                | Service                               | Role                                   | Protocol(s)                  | Packet   |
| -------------------- | ------------------------------------- | -------------------------------------- | ---------------------------- | -------- |
| **L5 (application)** | network access                        | exchange messages between processes    | HTTP, SMTP, FTP, SIP         | message  |
| **L4 (transport)**   | end-to-end delivery (reliable or not) | transport segments between end-systems | TCP, UDP, SCTP, QUIC         | segment  |
| **L3 (network)**     | global best-effort delivery           | move packets around network            | IP                           | datagram |
| **L2 (link)**        | local best-effort delivery            | move frames across link                | ethernet, wifi, DSL, LTE     | frame    |
| **L1 (physical)**    | physical transfer of bits             | move bits across physical medium       | optical fiber, coaxial cable | bits     |
The design exhibits some core principles listed below.
- need for stable interfaces, important to minimize need for adaptions of implementations
- end-to-end principle, allow abstraction to assume network transfer works
- fate-sharing principle, when storing state in distributed system, co-locate it with entities that rely on it

## HTTP
#todo 

## UDP / TCP
The main difference between the [[user datagram protocol (UDP)]] and [[transmission control protocol (TCP)]] lies in **reliability**, **ordering**, and **overhead**.

**UDP**
- unreliable, no guarantee that packets arrive in order or even arrive at all
- connectionless, data is sent without establishing connection
- less overhead
- use cases where time-sensitivity is important, i.e. video streaming, VoIP, gaming, **DNS queries**

**TCP**
- before transmission three-way [[TCP handshake]] is performed to establish connection
- reliable, guarantees delivery of data with packets **in order**, handles retransmission of lost packets
- some overhead because of setup, error checking ACKs and congestion control
- use cases where accuracy is critical, e.g. web browsing (HTTP, HTTPS), email (SMTP), file transfer (FTP)

| **Feature**  | **UDP**                | **TCP**                   |
| ------------ | ---------------------- | ------------------------- |
| Reliability  | No                     | Yes (acknowledged, retry) |
| Connection   | Connectionless         | Connection-oriented       |
| Packet Order | No ordering guarantees | Maintains order           |
| Speed        | Faster (lightweight)   | Slower (more overhead)    |
| Use Cases    | VoIP, Streaming, DNS   | HTTP, FTP, Email          |

## DNS
- uses UDP, reliability through repeating requests
- overall highly ...
	- scalable, in terms of records, analytics, administration
	- available, domains replicate independently
	- extensible, any level (including TLD) can be modified independently
- caching is very effective, top level servers rarely change and are very frequently requested
	- TTL field in record specifies for how long

### Resolution
- recursive resolution strategy
	- client offloads resolution of query to rest of tree
	![[CN-top-down-kurose-ross.pdf#page=168&rect=53,412,403,900|CN-top-down-kurose-ross, p.168|300]]
- iterative resolution strategy
	- resolve server only returns address of next server to query
	![[CN-top-down-kurose-ross.pdf#page=166&rect=52,101,386,553|CN-top-down-kurose-ross, p.166|300]]
	
- ==type of resolution strategy can change along the path!==

### RRs
![[DNS-RRs.png]]

### Glue Record
#todo 


## IP
#todo 


# Routing
#todo 
## BGP
#todo 

## SCION
#todo 
 