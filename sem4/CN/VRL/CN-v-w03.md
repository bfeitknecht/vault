---
lecture: "[[CN]]"
prev: "[[CN-v-w02]]"
next: "[[CN-v-w04]]"
tags: 
slides:
  - "[[CN-s05-transport-layer.pdf]]"
  - "[[CN-s06-UDP-TCP.pdf]]"
---

# Info


# Topics
- [[transport layer]]
- transport layer fairness
- [[user datagram protocol]]
- [[transmission control protocol]]
- [[automatic repeat request]]
- [[automatic repeat request|ARQ]] [(demo)](https://www.tkn.tu-berlin.de/teaching/rn/animations/gbn_sr/)
    - go back N
    - selective repeat


# Notes
- ISN randomly chosen to circumvent weakness of predictability
- choosing appropriate timeout value
    - too long (greater than RTT) leads to inefficiency
    - too small (less than RTT) leads to duplicate packets
- RTT estimation is tricky
- retransmission timeout (RTO)
- four goals of reliable transport
	- correctness, ensure data is delivered in-order and untouched
	- timeliness, minimize time until data is transferred
	- efficiency, use bandwidth optimally
	- fairness, play well with concurrent communications

## UDP / TCP
The main difference between the [[user datagram protocol]] and [[transmission control protocol]] lies in **reliability**, **ordering**, and **overhead**. A 5-[[tuple]] $(\mathrm{IP}_{src}, \mathrm{port}_{src}, \mathrm{IP}_{dest}, \mathrm{port}_{dest}, \mathrm{protocol})$ uniquely identifies UDP/TCP session.

**UDP**
- unreliable, no guarantee that packets arrive in order or even arrive at all
- connectionless, data is sent without establishing session
- little overhead
- use cases where time-sensitivity is important, i.e. video streaming, VoIP, gaming, DNS queries
- half duplex, at any given time data can only be sent one way at 

**TCP**
- before transmission three-way [[TCP handshake]] is performed to establish **reliable** connection
- reliable, guarantees delivery of data with packets **in-order**, handles retransmission of lost packets
- some overhead because of setup, error checking ACKs and congestion control
- use cases where accuracy is critical, e.g. web browsing (HTTP, HTTPS), email (SMTP), file transfer (FTP)
- full duplex service, data may flow both ways
- suffers from head-of-line blocking due to congestion control
    - lost packet needs to be retransmitted, the ones behind it must wait

| **Feature**  | **UDP**                | **TCP**                   |
| ------------ | ---------------------- | ------------------------- |
| reliability  | no                     | yes (acknowledged, retry) |
| connection   | connectionless         | connection-oriented       |
| packet order | no ordering guarantees | maintains order           |
| speed        | faster (lightweight)   | slower (more overhead)    |
| usecases     | VoIP, streaming, DNS   | HTTP, FTP, SMTP           |

