---
aliases: 
tags:
  - note/wiki
---
![[TCP-state-diagram.png|white]]

The **transmission control protocol (TCP)** is a protocol used in the [[transport layer]] of the internet. It improves upon [[user datagram protocol (UDP)]] by establishing a session for reliability and ensuring in-order delivery of packets. Additionally, congestion control is built in.


# Congestion Control
![[TCP-congestion-control.jpeg]]
TCP implements congestion control through different phases. In the congestion avoidance phase an additive increase multiplicative decrease (AIMD) algorithm is used. As result, multiple flows will eventually converge to use equal amounts of contended link. 