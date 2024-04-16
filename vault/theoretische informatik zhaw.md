

```
while (true) do
	if (w in A) return 1      // X
end

while (true) do
	if (w in A) return 1     // Y
end
```

$A \text{ decidable} \subset \Sigma^* \implies A \text{ semi-decidable} \land \overline A \text{ semi-decidable}$

Proof of "$\Longleftarrow$" 
```
INPUT(w)
n = 0;
WHILE true DO
	n = n + 1;
	IF A(w, n) THEN return 1;
	IF B(w, n) THEN return 0;
end
```
basically, switch step of semi-decidability computation every step 


$$
\begin{align}
A \\
B \\

\end{align}
$$
```
INPUT(w)
n = 0;
WHILE true DO
	n = n + 1;
	a, b = 0;
	IF A(w, n) THEN a = 1;
	IF B(w, n) THEN b = 1;
	if (a || b) return 1;    // for union
	if (a && b)// return a && b;    // for disjunction
end
```
