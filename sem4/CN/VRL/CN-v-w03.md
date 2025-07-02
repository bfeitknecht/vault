---
lecture: "[[CN]]"
prev: "[[CN-v-w02]]"
next: "[[CN-v-w04]]"
---

# Info


# Topics
- [[transport layer]]
- [[user datagram protocol (UDP)]]
- [[transmission control protocol (TCP)]]
- jitter


# Notes
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
- full duplex service, data may flow both ways

| **Feature**  | **UDP**                | **TCP**                   |
| ------------ | ---------------------- | ------------------------- |
| Reliability  | No                     | Yes (acknowledged, retry) |
| Connection   | Connectionless         | Connection-oriented       |
| Packet Order | No ordering guarantees | Maintains order           |
| Speed        | Faster (lightweight)   | Slower (more overhead)    |
| Use Cases    | VoIP, Streaming, DNS   | HTTP, FTP, Email          |

## TCP State Diagram
![[TCP-state-diagram.png|white]]
