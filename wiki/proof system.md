
A **proof system** is a 4-[[tuple]] $\Pi = (\mathcal{S}, \mathcal{P}, \phi, \tau)$ where,
1. $\mathcal{S} \subseteq \Sigma^{*}$ is the [[language]] of syntactically correct *statements* for some [[alphabet]] $\Sigma$
2. $\mathcal{P} \subseteq \Sigma^{*}$ is the language of syntactic correct *proofs*
3. $\tau : \mathcal{S} \to \{ 0, 1 \}$ is the *truth function*, that assigns to each statement $s \in \mathcal{S}$ its truth value and defines the semantics
4. $\phi : \mathcal{S} \times \mathcal{P} \to \{ 0, 1 \}$ is the *verification function*, which denotes that a proof $p \in \mathcal{P}$ is valid for some statement $s \in \mathcal{S}$

Proof systems exhibit the following two fundamental attributes.
- $\Pi$ is correct $\iff \forall s \in \mathcal{S} : \tau(s) = 0 \implies \not\exists p \in \mathcal{P} : \phi(s, p) = 1$
- $\Pi$ is complete $\iff \forall s \in \mathcal{S} : \tau(s) = 1 \implies \exists p \in \mathcal{P} : \phi(s, p) = 1$



![[dmath-script-hs24.pdf#page=144&rect=35,288,390,328|dmath-script-hs24, p.134]]

![[dmath-script-hs24.pdf#page=144&rect=35,235,389,275|dmath-script-hs24, p.134]]
