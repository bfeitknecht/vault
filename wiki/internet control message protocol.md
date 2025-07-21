---
aliases:
  - ICMP
tags:
  - note/wiki
---
![[CN-s08-network-layer.pdf#page=98&rect=85,147,700,257|CN-s08-network-layer, p.98]]

The **internet control message protocol (ICMP)** is a companion protocol to [[internet protocol|IP]]. They are implemented together and ICMP sits on top of IP to provide it with error reporting and testing capabilities.

Each ICMP packet has a *type*, *code*, and *checksum* and often carries the start of the offending package as payload.