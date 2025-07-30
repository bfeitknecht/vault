---
course: "[[FMFP]]"
prev: "[[FMFP-v-w12]]"
next: "[[FMFP]]"
tags: 
slides:
  - "[[FMFP-s15-model-checking.pdf]]"
---


# Info


# Topics
- model checking
- [[non-deterministic finite state machine (NFSM)]] from transition system
- $\omega$-regular language
- büchi automaton


# Notes
- safety property is regular if its bad prefixes are described by a regular language over the alphabet $\mathcal{P}(\mathrm{AP})$
- construct product automaton from NFSM for transition system and regular safety property to check for bad prefix
- check for deadlock in promela
```pml
init {
    /* other code */
	do
	:: timeout -> assert(false)
	od
}
```

| $\phi$       | Safety                                                                                                                                                                                                                                                          | Liveliness                                                                                                                                                                                                                    |
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Prove**    | **Show unfixability.**<br>Let $t \not\in \phi$ be arbitrary.<br>*Define* $t' \in \mathcal{P}(P)^{*}$ as a prefix of $t$.<br>Let $t'' \in \mathcal{P}(P)^{\omega}$ be an arbitrary trace.<br>*Prove* that $t't'' \not\in \phi$.<br>No bad prefix can be fixed.   | **Show fixability.**<br>Let $t' \in \mathcal{P}(P)^{*}$ be arbitrary finite prefix.<br>*Construct* infinite extension $t'' \in \mathcal{P}(P)^{\omega}$.<br>*Prove* that $t't'' \in \phi$.<br>Every good prefix can be fixed. |
| **Disprove** | **Find re-entry.**<br>*Define* some $t \not\in \phi$.<br>Let $t' \in \mathcal{P}(P)^{*}$ be an arbitrary prefix of $t$.<br>*Construct* infinite extension $t'' \in \mathcal{P}(P)^{\omega}$.<br>*Prove* that $t't'' \in \phi$.<br>This bad prefix can be fixed. | **Find dead-end.**<br>*Define* some finite prefix $t' \in \mathcal{P}(P)^{*}$.<br>Let $t'' \in \mathcal{P}(P)^{\omega}$ be an arbitrary trace.<br>*Prove* that $t't'' \not\in \phi$.<br>This good prefix can't be fixed.      |
