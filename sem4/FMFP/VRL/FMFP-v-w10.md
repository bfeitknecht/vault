---
name: "[[FMFP.md]]"
prev: "[[FMFP-v-w09.md]]"
next: "[[FMFP-v-w11.md]]"
slides: 
tags: 
---
	

# Info
- midterm only about second half of course
- big-step semantics, small-step semantics
- multiple choice
	- don't rush it, write proof, build derivation tree


# Topics
- structural operational semantics
- configuration
- transition system
- derivation sequence
- equivalence of small-step and big-step


# Notes
- big-step semantics describe how the overall results of the executions are obtained
- small-step semantics describe how the individual steps of the computations take place
- size of small-step according to atomic granularity of language
- execution of a statement terminates successfully if there exists a state with finite derivation sequence
	- these are ==properties of configurations== $\langle s, \sigma \rangle$, not statements alone!
- non-determinism does not suppress non-termination
- parallelism allows for interleaving
![[FMFP-s11-operational-semantics.pdf#page=96&rect=64,162,782,441|FMFP-s11-operational-semantics, p.137]]

