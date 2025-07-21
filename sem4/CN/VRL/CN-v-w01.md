---
module: "[[CN]]"
prev: "[[CN]]"
next: "[[CN-v-w02]]"
tags:
slides:
  - "[[CN-s01-introduction.pdf]]"
  - "[[CN-s02-layering.pdf]]"
---


# Info


# Topics
- layering

# Notes
- layers enable abstraction

## Network Layers
![[CN-s08-network-layer.pdf#page=30&rect=99,111,610,351|CN-s08-network-layer, p.30]]

Computer networks can be broken down into five layers that provide different services. Each layer provides a service to the layer above by using the services of the layer directly below it.

| Layer                | Service                               | Role                                                 | Protocol(s)                  |
| -------------------- | ------------------------------------- | ---------------------------------------------------- | ---------------------------- |
| **L5 (application)** | network access                        | exchange *messages* between processes (applications) | HTTP, SMTP, FTP, SIP         |
| **L4 (transport)**   | end-to-end delivery (reliable or not) | transport *segments* between end-systems             | TCP, UDP, SCTP, QUIC         |
| **L3 (network)**     | global best-effort delivery           | move *datagrams* around network                      | IP                           |
| **L2 (link)**        | local best-effort delivery            | move *frames* across link                            | ethernet, wifi, DSL, LTE     |
| **L1 (physical)**    | physical transfer of bits             | move *bits* across physical medium                   | optical fiber, coaxial cable |
The design exhibits some core principles listed below.
- need for stable interfaces, important to minimize need for adaptions of implementations
- end-to-end principle, allow abstraction to assume network transfer works
- fate-sharing principle, when storing state in distributed system, co-locate it with entities that rely on it
