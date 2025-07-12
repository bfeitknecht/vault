
> [!danger] TO-DO
> - [ ] BGP
> - [ ] SCION
> - [ ] QUIC
> - [ ] IP
> - [ ] TCP
>     - [ ] ACK strategies
>     - [ ] flow control
>     - [ ] congestion control
>     - [ ] CCAs
>     - [ ] head-of-line blocking
> - [ ] HTTP
> - [ ] DNS
>     - [ ] glue record


## Flow Control
- prevents one fast sender from overloading slow receiver
    - uses receiving window, how many bytes can be sent without overflowing receiver buffer
    - based on receiver input

## Congestion Control
- prevents a set of senders from overloading the network
    - uses "congestion" window, i.e. how many bytes can be sent without network overflow
    - based on network conditions
- three driving principles
    - congestion detection, three possible approaches
        - network tells source – signal itself could be lost
        - measure packet delay – signal often noisy, delay varies considerably
        - measure packet loss – TCP already does this
            - duplicate ACKs, mild congestion signal, packets still make it
            - timeout packets, severe congestion signal, multiple consecutive lost packets
    - bandwidth estimation, continuously estimate bottleneck bandwidth
    - fairness, share available bandwidth fairly among flows without network overload



## Network

**routing**
- decide where packet goes, which direction
- control plane of network
- global process
- expensive

**forwarding**
- just send packet along its path
- data plane of network
- local process
- fast


## Switching
**packet switching**
- applicable for high peak-average utilization rate, bursty traffic

**circuit switching**
- applicable when peak-average utilization rate is low, constant bandwidth required, e.g. voice streaming

**virtual circuit**
- #todo 


"A 5-tuple uniquely identifies a UDP/TCP session.", https://www.ietf.org/rfc/rfc6146.txt#:~:text=5-Tuple%3A%20The%20tuple%20
This tuple consists of (source IP, source port, destination ip, destination port, protocol) but here we already know that the protocol is TCP hence the prior four suffice.

- **Transmission delay:** Time it takes to put packets onto the wire.
- **Propoagation delay:** Time it takes packets to travel through the wire from source to destination.
- **Processing delay:** Time it takes for packet to be processed within a switch from being taken out of the queue to be sent out.
- **Queuing delay:** Time a packet spends in a queue between arriving and being processed.


_Simplex_: data may only flow one way.  
_Half-duplex_: data may flow both ways, but not simultaneously  
_Full-duplex_: data may flow both ways simultaneously
