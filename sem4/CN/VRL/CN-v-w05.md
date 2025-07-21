---
module: "[[CN]]"
prev: "[[CN-v-w04]]"
next: "[[CN-v-w06]]"
tags: 
slides:
  - "[[CN-s09-routing.pdf]]"
---


# Info
- "Never let the telephone people do networking. That's how we got 48bit MAC addresses."
- "150ms is an eternity."


# Topics
- [[network address translation]]
- port forwarding
- dynamic DNS service
- IPv6
- ABC classes
- CIDR
- routing algorithms
	- distance vector routing
	- link state routing
	- path vector routing


# Notes
- NAT breaks some transport layer principles (extract destination IP from FTP packet)
- neighbor discovery protocol (NDP) equates to DHCP
- happy eyeballs, dual stack solution with string preference for IPv6 (150ms slower but still wins)
- IPv6 islands connected through IPv4 tunnels to transition global network
- routers route, hosts only forward
![[CN-s09-routing.pdf#page=33&rect=91,148,456,309|CN-s09-routing, p.33|275]]
- packet fragmentations to connect networks with different maximum transmission unit (MTU)
![[CN-s08-network-layer.pdf#page=81&rect=78,126,496,261|CN-s08-network-layer, p.81|300]]

## Binary to Decimal Conversion
$$
\begin{align}
2^{n} &\approx 2^{m} \implies \begin{cases}
m \approx \frac{3n}{10} \\
n \approx \frac{10m}{3}
\end{cases} \\
2^{10} &\approx 10^{3} \\
2^{20} &\approx 10^{6} \\
2^{30} &\approx 10^{9} \\

\end{align}
$$
## Routing Algorithms

| Algorithm       | Definition                                                         | Correctness                              | Convergence                              | Scalability               | Local Policy Flexibility                            | Link Failure Detection                         |
| --------------- | ------------------------------------------------------------------ | ---------------------------------------- | ---------------------------------------- | ------------------------- | --------------------------------------------------- | ---------------------------------------------- |
| distance vector | every router shares distance vector table with neighbors           | distributed [[bellman-ford (algorithm)]] | slow, many exchanges                     | proportional to neighbors | router can assign custom metric                     | can lead to count-to-$\infty$ problem          |
| link state      | every router builds complete map of network by flooding LSAs       | replicated [[dijkstra (algorithm)]]      | fast, flood and compute                  | proportional to network   | global system does not allow for local modification | triggers new LSA flood, resolves itself        |
| path vetor      | every AS advertises full path (sequence of AS) to each destination | AS level checks                          | depends on network and policy complexity | proportional to network   | router can apply import/export policy               | AS path checks and propagation give resilience |
