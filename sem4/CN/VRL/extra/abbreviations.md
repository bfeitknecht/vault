
| Acronym | Long Form                                     | Explanation                                                                                         |
| ------- | --------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| ACK     | acknowledgment                                | used in many network protocols to confirm the receipt of data                                       |
| AIMD    | additive increase, multiplicative decrease    | algorithm used by congestion-control algorithms to reach an efficient and fair bandwidth allocation |
| AP      | access point                                  | device to provide WiFi connectivity                                                                 |
| API     | application programming interface             | interface that defines the interactions between different applications                              |
| ARP     | Address Resolution Protocol                   | translates between IP and MAC addresses                                                             |
| ARQ     | automatic repeat request                      | strategy to handle errors in data transmission                                                      |
| AS      | autonomous system                             | independent network that interconnects with others to form the Internet                             |
| BCP     | best current practice                         | rules and recommendations for the application of protocols                                          |
| BDP     | bandwidth-delay product                       | product of bandwidth and delay; measures amount of data in flight                                   |
| BEB     | binary exponential backoff                    | approach to double waiting time after each consecutive collision                                    |
| BGP     | Border Gateway Protocol                       | today's de-facto standard inter-domain routing protocol (path-vector protocol)                      |
| CDN     | content distribution (*or delivery*) network  | distributed network of data centers and caches to deliver content to users with low latency         |
| CIDR    | classless inter-domain routing                | allocation method for IP addresses allowing variable-length network prefixes                        |
| CRC     | cyclic redundancy check                       | error-detection mechanism                                                                           |
| CSMA    | carrier-sense multiple access                 | protocol that listens for other transmissions before sending data                                   |
| CSMA/CD | CSMA with collision detection                 | additionally to CSMA check for collisions while sending                                             |
| CTS     | clear to send                                 | confirmation to send data in MACA                                                                   |
| CWND    | congestion window                             | maximum amount of data in flight to not overload the network                                        |
| DHCP    | Dynamic Host Configuration Protocol           | protocol for automatically configuring IP hosts                                                     |
| DNS     | Domain Name System                            | hierarchical system mapping names to IP addresses and other data                                    |
| DoS     | denial of service                             | type of attack where an attacker deteriorates service for legitimate users                          |
| DSL     | digital subscriber line                       | technology to transmit digital data over telephone lines                                            |
| DV      | distance vector                               | one of two main approaches to intra-domain routing based on distributed Bellman-Ford                |
| ECMP    | equal-cost multi path                         | approach to use multiple paths simultaneously when they have equal cost                             |
| FDM     | frequency-division multiplexing               | one of two main types of sharing bandwidth                                                          |
| FN      | false negative                                | type of error of probabilistic algorithms and data structures                                       |
| FP      | false positive                                | type of error of probabilistic algorithms and data structures                                       |
| Gbps    | gigabit per second                            | unit to measure network bandwidth (see also bps, kbps, Mbps)                                        |
| HTML    | HyperText Markup Language                     | markup language for documents, primarily used for websites                                          |
| HTTP    | Hypertext Transfer Protocol                   | application-layer protocol used (among others) for web browsing                                     |
| ICMP    | Internet Control Message Protocol             | protocol to provide error and diagnostic information for IP                                         |
| IETF    | Internet Engineering Task Force               | standards organization which develops and Internet standards                                        |
| IGP     | interior gateway protocol                     | intra-domain routing protocol                                                                       |
| IP      | Internet Protocol                             | today's de-facto standard network-layer protocol                                                    |
| ISM     | industrial, scientific, and medical           | unlicensed part of the wireless frequency spectrum                                                  |
| ISP     | Internet service provider                     | company that provides internet connectivity                                                         |
| IS-IS   | Intermediate System to Intermediate System    | one of the two most common intra-domain routing protocols (link-state protocol)                     |
| IXP     | Internet exchange point                       | location where many ASes interconnect                                                               |
| LAN     | local area network                            | small network within a household or organization                                                    |
| LDPC    | low-density parity-check                      | type of error-correcting code                                                                       |
| LP      | linear program(ming)                          | approach for optimization problems with linear constraints and objectives                           |
| LS      | link state                                    | one of two main approaches to intra-domain routing based on flooding and Dijkstra                   |
| LSP     | link-state packet                             | local topology information flooded in a LS routing protocol                                         |
| MAC     | media access control                          | part of the link layer; often used in "MAC address" for link-layer addresses                        |
| MAC     | message-authentication code                   | tag to authenticate data based on symmetric cryptography (*not very relevant for this lecture*)     |
| MACA    | Multiple Access with Collision Avoidance      | protocol for wireless communication to mitigate issues with exposed and hidden terminals            |
| MitM    | man in the middle                             | type of attack where an attacker inserts themselves into the communication of two parties           |
| MPLS    | Multiprotocol Label Switching                 | virtual-circuit protocol between link and network layer                                             |
| MSS     | maximum segment size                          | maximum size of a transport-layer payload                                                           |
| MTU     | maximum transmission unit                     | maximum size of a network-layer packet                                                              |
| NAT     | network address translation                   | system to replace IP address and port of packets at the network layer                               |
| NDP     | Neighbor Discovery Protocol                   | protocol that provides ARP and DHCP functionality for IPv6                                          |
| NIC     | network interface card                        | hardware component that connects a computer to the network                                          |
| OFDM    | orthogonal frequency-division multiplexing    | type of FDM to carry data in parallel                                                               |
| OSPF    | Open Shortest Path First                      | one of the two most common intra-domain routing protocols (link-state protocol)                     |
| PPP     | Point-to-Point Protocol                       | link-layer framing protocol                                                                         |
| PRG     | pseudo-random generator                       | symmetric cryptography primitive to generate a stream of pseudorandom bits (aka stream cipher)      |
| PRP     | pseudo-random permutation                     | symmetric cryptography primitive to permute blocks of data (aka block cipher)                       |
| QUIC    | (*originally*) Quick UDP Internet Connections | new secure and reliable transport-layer protocol built on UDP                                       |
| RFC     | request for comment                           | standards document, mainly published by IETF                                                        |
| RIB     | Routing Information Base                      | routing table stored in a router (or a network host)                                                |
| RIP     | Routing Information Protocol                  | routing protocol in the early Internet                                                              |
| ROA     | route origin authorization                    | certificate within RPKI to originate a certain IP prefix                                            |
| RPKI    | Resource Public Key Infrastructure            | hierarchy of resource certificates to mitigate BGP hijacks                                          |
| RTS     | request to send                               | request to send data in MACA                                                                        |
| RTT     | round-trip time                               | two-way latency of a connection                                                                     |
| RWND    | receiving window                              | maximum amount of data in flight to not overload the receiver                                       |
| SNR     | signal-to-noise ratio                         | important measure of communication channels                                                         |
| TCAM    | ternary content-addressable memory            | specialized hardware for longest-prefix matching                                                    |
| TCP     | Transmission Control Protocol                 | transport-layer protocol providing reliable stream transport                                        |
| TDM     | time-division multiplexing                    | one of two main types of sharing bandwidth                                                          |
| TLD     | top level domain                              | highest DNS hierarchy                                                                               |
| TLS     | transport-layer security                      | security protocol building on TCP (*not relevant for this lecture*)                                 |
| TTL     | time to live                                  | used in several protocols to define the validity of data or packets                                 |
| UDP     | User Datagram Protocol                        | transport-layer protocol providing *un*reliable datagram transport                                  |
| URL     | Uniform Resource Locator                      | reference to a web resource                                                                         |
| VC      | virtual circuit                               | one of two main networking models                                                                   |
| VoIP    | voice over IP                                 | technologies for voice communication over the Internet                                              |
