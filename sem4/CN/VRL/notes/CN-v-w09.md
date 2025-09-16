---
course: "[[CN]]"
prev: "[[CN-v-w08]]"
next: "[[CN-v-w10]]"
tags:
slides:
  - "[[CN-s13-physical-layer.pdf]]"
  - "[[CN-s14-network-stack.pdf]]"
---


# Info
- "Please don't sit in the front three rows!"


# Topics
- signal attenuation
- signal delay
- noise to signal ratio
- interference
- baseband modulation
- passband modulation
- nyquist limit
- digital subscriber line


# Notes
- signal can interfere with itself (instructive interference) ![[CN-s13-physical-layer.pdf#page=31&rect=63,100,604,313|CN-s13-physical-layer, p.31|400]]
- modulation allows analog signal to represent binary data
	- non-return to zero (NRZ) is most basic implementation, switch high (+V) and low (-V) voltage
- NRZ flawed, since transmission and non-transmission can't be distinguished, bits can't be counted reliably (desynchronization) and electricity is transmitted on long runs of same bit
- passband modulation carries signal by modulation carrier 
  ![[baseband-passband.png|300]] ![[CN-s13-physical-layer.pdf#page=40&rect=50,106,788,432|CN-s13-physical-layer, p.40|300]]
- key channel properties are bandwidth $B$, signal strength $S$ and noise strength $N$ ![[CN-s13-physical-layer.pdf#page=42&rect=45,264,436,326|CN-s13-physical-layer, p.42|300]]
	- $B$ limits rate of transitions
	- $S, N$ limit how many signal levels can be distinguished
- nyquist limit corresponds to maximum sample rate with $V$ signal levels, $R = 2B \log_{2}V$ in $\frac{b}{s}$ without noise
- signal to noise ratio (SNR) corresponds to logarithm of how many signal levels we can distinguish, $\mathrm{SNR}_{\mathrm{dB}} = 10 \log_{10} \frac{S}{N}$
- shannon capacity is maximum information carrying rate of the channel, $C = B \log_{2}\left( 1 + \frac{S}{N} \right)$ in $\frac{b}{s}$
- IP requires little from lower layers, delivers few guarantees to higher levels
