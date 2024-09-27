#todo 

A [[word]] $x\in\{0,1\}^*$ is **random** if its [[kolmogorov complexity]] is as least as long as the word itself, i.e. $K(x)\geq|x|$. A number $n\in \mathbb N$ is random, if $K(n)=K(\mathrm{Bin}(n))\geq \lceil \log_{2}(n+1) \rceil -1$.


# Density of Primes
$$
\lim_{ n \to \infty } \frac{p_{n}}{n\ln(n)}=1
$$
The primes are quite dense. The original proof is complicated and relies on the [[set]] of [[complex number|complex numbers]]. We present a proof using the [[kolmogorov complexity]].


# Number of Primes
![[hromkovic-TIN.pdf#page=56&rect=45,70,438,111|hromkovic-TIN, p.41]]
	
The proof idea is, that we need infinitely many primes to decompose the infinitely many, increasing random numbers.