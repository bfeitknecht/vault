---
aliases:
  - TCP
tags:
  - note/wiki
---
![[TCP-state-diagram.png|white]]

The **transmission control protocol (TCP)** is a protocol used in the [[transport layer]] of the internet. It improves upon [[user datagram protocol]] by establishing a session through the TCP handshake for reliability and ensuring in-order delivery of packets. Additionally, congestion control is built in. 

The TCP handshake takes 1RTT, however encryption, i.e. TLS takes another 2RTT. TCP sockets use the virtual circuit method for session management.

# ACK Strategy
| Strategy             | Definition                      | Pro                                                             | Con                                                  | Packet Reorder    | Packet Duplication                                                             |
| -------------------- | ------------------------------- | --------------------------------------------------------------- | ---------------------------------------------------- | ----------------- | ------------------------------------------------------------------------------ |
| individual ACK       | received 1, received 2, ...     | know fate of every packet<br>simple window algorithm            | loss of ACK packet causes unnecessary retransmission | out-of-order ACKs | no problem                                                                     |
| cumulative ACK       | received up to 3                | simple<br>low ACK overhead                                      | cannot inform sender about out-of-order ACKs         | gapped ACKs       | no problem                                                                     |
| full information ACK | received up to 3 and received 5 | enables selective retransmission<br>efficient in lossy networks | larger header<br>more complex logic                  | duplicate ACKs    | problematic, duplicate ACKs confused for loss cause unnecessary retransmission |


# Congestion Control
![[TCP-congestion-control.jpeg]]
TCP implements congestion control through different phases. In general, an additive increase multiplicative decrease (AIMD) algorithm is used. As result, multiple flows will eventually converge to use equal amounts of contended link, making resource distribution fair.

The receiver advertises its *receive window (rwnd)*, which denotes the rate limit of receiving data. The sender maintains the *congestion window (cwnd)* which limits how much data is sent. This represents flow control.

In the initial phase of *congestion control (slow start)*, the cwnd is increased by small multiple of *maximum segment size (MSS)* on each received ACK, effectively doubling it every RTT. This represents congestion control.

The CCA used by TCP is loss based and thus not kleinrock optimal. Furthermore, it's inherently RTT unfair, since lower RTT increases `swnd` faster.

```
# initialization
cwnd = 1
ssthresh = infinite

on ACK:
    duplicate_ACKs = 0
    if cwnd < ssthresh:
        # slow start, exponential growth
        cwnd += 1
	else:
	    # congestion avoidance, additive increase
    	cwnd += 1 / cwnd

on TIMEOUT:
    # multiplicative decrease
    ssthresh = cwnd / 2
    cwnd = 1

on duplicate_ACK:
    duplicate_ACKs += 1
    if duplicate_ACKs == 3:
        # fast retransmit
        ssthresh = cwnd / 2
        cwnd = ssthresh
    elif duplicate_ACKs > 3:
		# fast recovery, subsequent duplicate_ACKs increase cwnd by 1 MSS
        cwnd += 1
```


## Other Algorithms
Loss based CCAs are inherently suboptimal!
![[CN-s06-UDP-TCP.pdf#page=146&rect=59,57,1810,921|CN-s06-UDP-TCP, p.146|400]]

| Name  | Graph                                                                                                                                                                                     | Metric | Properties                                                                                                                                                      |
| ----- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| reno  | ![[CN-s06-UDP-TCP.pdf#page=142&rect=251,299,843,759\|CN-s06-UDP-TCP, p.142\|200]]                                                                                                         | loss   | RTT unfairness, higher RTT leads to slower increase and thus less bandwidth                                                                                     |
| cubic | ![[CN-s06-UDP-TCP.pdf#page=144&rect=251,294,845,757\|CN-s06-UDP-TCP, p.144\|200]]                                                                                                         | loss   | RTT fairness<br>not kleinrock optional<br>suffers from bufferbloat since rate is only decreased on loss, resulting in high latency because link buffers fill up |
| vegas | ![[CN-s06-UDP-TCP.pdf#page=147&rect=252,303,837,756\|CN-s06-UDP-TCP, p.147\|200]]<br>![[CN-s06-UDP-TCP.pdf#page=148&rect=253,303,832,754\|CN-s06-UDP-TCP, p.148\|200]]<br>blue shows reno | delay  | almost kleinrock optimal<br>determining propagation delay is difficult<br>uncompetitive against loss-based CCAs                                                 |
| BBR   | ![[CN-s06-UDP-TCP.pdf#page=150&rect=237,305,834,768\|CN-s06-UDP-TCP, p.150\|200]]<br>purple shows reno                                                                                    | delay  | kleinrock optimal (only in isolation)<br>unfair or losing against loss-based CCAs                                                                               |
