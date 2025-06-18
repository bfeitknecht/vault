

# Layers
The network can be broken down into five layers that provide different services. Each layer provides a service to the layer above by using the services of the layer directly below it.

| Layer                | Service                               | Role                                   | Protocol(s)                  |
| -------------------- | ------------------------------------- | -------------------------------------- | ---------------------------- |
| **L5 (application)** | network access                        | exchange messages between processes    | HTTP, SMTP, FTP, SIP         |
| **L4 (transport)**   | end-to-end delivery (reliable or not) | transport segments between end-systems | TCP, UDP, SCTP               |
| **L3 (network)**     | global best-effort delivery           | move packets around network            | IP                           |
| **L2 (link)**        | local best-effort delivery            | move frames across link                | ethernet, wifi, DSL, LTE     |
| **L1 (physical)**    | physical transfer of bits             | move bits across physical medium       | optical fiber, coaxial cable |
The design exhibits some core principles listed below.
- need for stable interfaces, important to minimize need for adaptions of implementations
- end-to-end principle, allow abstraction to assume network transfer works
- fate-sharing principle, when storing state in distributed system, co-locate it with entities that rely on it


# HTTP
#todo 


# UDP / TCP
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


# DNS
#todo 


# IP
#todo 


# Routing
#todo 


# BGP
#todo 


# SCION
#todo 

