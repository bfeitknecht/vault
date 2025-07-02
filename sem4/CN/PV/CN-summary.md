
> [!danger] TO-DO
> - [ ] BGP
> - [ ] SCION
> - [ ] QUIC
> - [ ] glue record
> - [ ] IP
> - [ ] TCP
> 	- [ ] ACK strategies
> 	- [ ] flow control
> 	- [ ] congestion control
> 	- [ ] CCAs
> - [ ] HTTP


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