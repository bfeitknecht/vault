
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





## Misc

| Delay Type   | Definition                                                  |
| ------------ | ----------------------------------------------------------- |
| transmission | time to put packet onto wire                                |
| propagation  | time for packet to travel wire from source to destination   |
| queueing     | time of packet in queue after arrival and before processing |
| processing   | time to process packet between dequeue and forward          |

| Plex        | Definition                                    |
| ----------- | --------------------------------------------- |
| simplex     | data flows one way                            |
| half duplex | data can flow both ways but not simulateously |
| full duplex | data can flow both ways simultaneously        |
