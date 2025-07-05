
The **natural join** is a [[arity|binary]] operation on [[relation|relations]].
$$
R (A, B) \Join S (B, C) = \prod_{A, B, C} \big( \sigma_{R.B = S.B} (R \times S) \big)
$$
The following case distinction on the attributes of $R, S$ are made.
1. $\mathrm{Attr}(R) \cap \mathrm{Attr}(S) = \varnothing \implies R \Join S = R \times S$
2. $\mathrm{Attr}(R) = \mathrm{Attr}(S) \implies R \Join S = R \cap S$
