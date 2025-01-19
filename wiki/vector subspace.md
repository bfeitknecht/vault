
A **vector subspace** or **linear subspace** $U$ of a [[vector space]] $V$ is a non-empty [[subset]] of $V$ that exhibits [[closure]] under [[vector addition]] and [[scalar multiplication]], i.e. the sum of two elements of $U$ and the product of an element  of $U$ by a scalar belongs to $U$. This implies that every [[linear combination]] of elements of $U$ belongs to $U$.

A subspace is a *vector space* for the induced addition and scalar multiplication, i.e. the closure property implies that the axioms of a vector space are satisfied. The closure property also implies that every [[intersection]] of linear subspaces is a linear subspace.

Every vector spaces is equipped with at least two (trivial) vector subspaces, the *zero vector space* consisting of the zero vector alone and the entire vector space itself.


## Four Fundamental Subspaces

```tikz
\usepackage{tikz-cd}
\begin{document}

% https://q.uiver.app/#q=WzAsMTIsWzAsMCwiVyJdLFs3LDAsIlciXSxbMywyLCJWIl0sWzQsMiwiViJdLFswLDMsIlxcbWF0aHJte059KEFee1xcbWF0aHNme1R9fSkiXSxbMyw0LCJcXG1hdGhybXtDfShBXntcXG1hdGhzZntUfX0pIl0sWzcsNCwiXFxtYXRocm17Q30oQSkiXSxbNCw1LCJcXG1hdGhybXtOfShBKSJdLFswLDcsIlxcbWF0aGJmezB9X3tXfSJdLFszLDcsIlxcbWF0aGJmezB9X3tWfSJdLFs0LDcsIlxcbWF0aGJmezB9X3tWfSJdLFs3LDcsIlxcbWF0aGJmezB9X3tXfSJdLFswLDQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSw2LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDcsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw4LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsOV0sWzUsOSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDExLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMTAsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbOCw5XSxbMTAsMTFdLFs3LDExXSxbMyw2XSxbMCw1XV0=
\begin{tikzcd}
	W &&&&&&& W \\
	\\
	&&& V & V \\
	{\mathrm{N}(A^{\mathsf{T}})} \\
	&&& {\mathrm{C}(A^{\mathsf{T}})} &&&& {\mathrm{C}(A)} \\
	&&&& {\mathrm{N}(A)} \\
	\\
	{\mathbf{0}_{W}} &&& {\mathbf{0}_{V}} & {\mathbf{0}_{V}} &&& {\mathbf{0}_{W}}
	\arrow[no head, from=1-1, to=4-1]
	\arrow[from=1-1, to=5-4]
	\arrow[no head, from=1-8, to=5-8]
	\arrow[no head, from=3-4, to=5-4]
	\arrow[from=3-5, to=5-8]
	\arrow[no head, from=3-5, to=6-5]
	\arrow[no head, from=4-1, to=8-1]
	\arrow[from=4-1, to=8-4]
	\arrow[no head, from=5-4, to=8-4]
	\arrow[no head, from=5-8, to=8-8]
	\arrow[no head, from=6-5, to=8-5]
	\arrow[from=6-5, to=8-8]
	\arrow[from=8-1, to=8-4]
	\arrow[from=8-5, to=8-8]
\end{tikzcd}

\end{document}
```

For a matrix in $\mathbb{K}^{m \times n}$ describing a [[linear transformation]] $T_{A} : U \to V$ there are *four fundamental subspaces*. Namely, the [[row and column space]] which denote the [[image]] and [[coimage]] of the transformation and the (left-) [[nullspace (kernel)]] which denotes the (co)kernel

Additionally, $\mathrm{C}(A^{\mathsf{T}}) = \mathrm{N}(A)^{\bot}$ and $\mathrm{C}(A) = N(A^{\mathsf{T}})^{\bot}$. From this follows that $V \simeq \mathrm{C}(A^{\mathsf{T}}) \oplus \mathrm{N}(A)$ and $W \simeq C(A) \oplus \mathrm{N}(A^{\mathsf{T}})$.


## Complementary Subspace

Let $U \subseteq V$. For some vector space $U'$ such that $U \cap U' = \{ \mathbf{0} \}$ and $U \oplus U' \simeq V$ holds, $U$ is **complementary** with $U'$ to $V$.


## Orthogonal Subspace

Two vector spaces $U, V$ are said to be **orthogonal**, $U \mathop\bot V$ if it holds that $\forall \mathbf{u} \in U, \mathbf{v}  \in V : \mathbf{u}^{\top} \mathbf{v} = 0$, i.e. all vectors are orthogonal.


## Orthogonal Complement

Let $V \subseteq W$ be a vector subspace of $V$. Then $V^{\bot} = \{  w \in W \mid \forall v \in V, w ^{\mathsf{T}} v = 0 \}$


## Isomorphisms

