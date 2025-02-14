
A **multi-tape turing machine** (MTM) $M$ is defined identically to a simple TM, with the distinction that the input tape cannot be written to. Formally, for $k \in \mathbb{N} - \{ 0 \}$, the configurations of of a $k$MTM $M$ is as follows.
$$
C = (q, w, i, (x, j) ^{k}) \in Q \times \Sigma^{*} \times \mathbb{N} \times (\Gamma^{*} \times \mathbb{N})^{k}
$$
