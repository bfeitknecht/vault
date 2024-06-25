
```
n = 2	// evens
m = 2	// odds
K = 3	// friendships

a b		// i-th even need a e_tk, have b o_tk
1 1		
0 0
i

c d		// j-th odd need c o_tk, have d e_tk
0 0
1 1
j

i j		// i-th even f/w j-th odd
0 0
1 0
1 1
```


```mermaid
flowchart TD

ide0((e0))
ide1((e1))
ido0((o0))
ido1((o1))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

subgraph e
ide0
ide1
end

subgraph o
ido0
ido1
end

ide0 --> ido0
ide1 --> ido0 & ido1

```


```mermaid
flowchart LR

idfe0((0))
idte0((2))
idfe1((4))
idte1((6))

idfo0((1))
idto0((3))
idfo1((5))
idto1((7))

idf((8))
idt((9))

%%%%%%%%%%%%%%%%%%%%%%%%%

subgraph fe
	idfe0
	idfe1
end

subgraph te
	idte0
	idte1
end

idf -->|"a0"| idfe0
idf -->|"a1"| idfe1
idf -->|"c0"| idfo0
idf -->|"c1"| idfo1

idte0 -->|"b0"| idt
idte1 -->|"b1"| idt
idto0 -->|"d0"| idt
idto1 -->|"d1"| idt

idfe0 ==> idto0 
idfo0 ==> idte0

idfe1 ==> idto0
idfe1 ==> idto1
idfo0 ==> idte1
idfo1 ==> idte1
```

just do the naming like this:

```java
for (int i = 0; i < k; i++) {
	int e = In.readInt();   // e-th even steven (0..n)
	int o = In.readInt();   // o-th odd todd (0..m)
	
	int even = 2*e;        
	int steven = 2*e+1;
	int odd = 2*(n+o);
	int todd = 2*(n+o)+1;
	
	G.addEdge(even, todd, I);
	G.addEdge(odd, steven, I);
}
```

the rest was correct.