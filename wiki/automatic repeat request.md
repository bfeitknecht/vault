---
aliases:
  - ARQ
tags:
  - note/wiki
---

The **automatic repeat request (ARQ)** defined the general concept of providing reliability by using retransmissions. A packet is resent when the timer for the corresponding ACK runs out. Depending on the context we have to use different ACK strategies.


![[transmission control protocol#ACK Strategy|TCP]]


# ARQ Protocol

| Strategy         | Definition                                                 | ACK strategy | Caveats                               |
| ---------------- | ---------------------------------------------------------- | ------------ | ------------------------------------- |
| stop and wait    | send single packet and wait for ACK, otherwise resend      | individual   | inefficient for high latency networks |
| go back N        | upon inferred loss, retransmit everything not yet ACKed    | cummulative  |                                       |
| selective repeat | upon inferred loss, retransmit only packet considered lost | individual   |                                       |
