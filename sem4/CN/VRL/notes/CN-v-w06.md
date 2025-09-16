---
lecture: "[[CN]]"
prev: "[[CN-v-w05]]"
next: "[[CN-v-w07]]"
tags: 
slides:
  - "[[CN-s09-routing.pdf]]"
  - "[[CN-s10-BGP.pdf]]"
---


# Info
- RIP routing information protocol


# Topics
- autonomous system
- border gateway protocol
- gao-rexford rules
- valley route


# Notes
- peering links are only used if both entities make some money
- ISPs can choose not to announce prefixes, leading to entities disappearing from the internet
- rule of thumb
    - don't cross two peer links
    - after crossing peer link only go downwards

| propagate routes (from/to) | customer | peer | customer |
| -------------------------- | -------- | ---- | -------- |
| **customer**               | ✓        | ✓    | ✓        |
| **peer**                   | ✓        | X    | X        |
| **provider**               | ✓        | X    | X        |


- split horizon prevents advertise of route though interface from which it was learned
- poison reverse advertises failed link's route through interface from which it was learned with infinite metric
	- other nodes on subnet won't hop here next
