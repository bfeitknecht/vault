---
module: "[[CN]]"
prev: "[[CN-v-w04]]"
next: "[[CN-v-w06]]"
---


# Info
- "Never let the telephone people do networking. That's how we got 48bit MAC addresses."
- "150ms is an eternity"


# Topics
- network address translation (NAT)
- port forwarding
- dynamic DNS service
- IPv6
- ABC classes
- CIDR


# Notes
- NAT breaks some transport layer principles (extract destination IP from FTP packet)
- neighbor discovery protocol (NDP) equates to DHCP
- happy eyeballs, dual stack solution with string preference for IPv6 (150ms slower still wins)
- IPv6 islands connected through IPv4 tunnels to transition global network


![[CN-s09-routing.pdf#page=33&rect=91,148,456,309|CN-s09-routing, p.33|300]]