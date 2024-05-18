

```mermaid
flowchart TD

id0((0))
id1((1))
id2((2))
id3((3))

%%v["v[] = [ 1, 2, 3, 2 ]"]
%%p["p[] = [ 12, 6, 3, 5 ]"]
%%d["d[] = [ 4, 1, 8, 13 ]"]

id0 --> id1
id1 --> id2
id2 --> id1
id1 --> id3

```

```mermaid
flowchart LR

idF(("SOURCE"))
idT(("SINK"))

idf0((0))
idf1((1))
idf2((2))
idf3((3))

id0a((a))
id0b((b))
id0c((c))

id1a((a))
id1b((b))
id1c((c))

id2a((a))
id2b((b))
id2c((c))

id3a((a))
id3b((b))
id3c((c))

idt0((0))
idt1((1))
idt2((2))
idt3((3))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

idF -->|"?/12"| idf0 
idF -->|"?/6"| idf1
idF -->|"?/3"| idf2
idF -->|"?/5"| idf3

idt0 -->|"?/4"| idT 
idt1 -->|"?/1"| idT
idt2 -->|"?/8"| idT
idt3 -->|"?/13"| idT


idf0 --> id0a & id0b & id0c --> idt0
idf1 --> id1a & id1b & id1c --> idt1
idf2 --> id2a & id2b & id2c --> idt2
idf3 --> id3a & id3b & id3c --> idt3

idf0 ==> id0a ==> idt0
idf1 ==> id1b ==> idt1
idf2 ==> id2c ==> idt2
idf1 ==> id


%%idf0 --> id1a
%%idf1 --> id2b
%%idf2 --> id1c
%%idf1 --> id3a
```



```
n	=	4
m	=	4
v	= 	[1, 2, 3, 2]	
p	=	[12, 6, 3, 5]
d	=	[4, 1, 8, 13]

0 --> 1
1 --> 2
2 --> 1
1 --> 3
```


$v_i \widehat = \ \text{"favorite food"}$, only eat food variety $v_i$ if produced in city $i$.
$p_i \widehat = \ \text{"produced food"}$, of variety $v_i$
$d_i \widehat = \ \text{"demand of food"}$, of $v_j\ne v_i$ or $i=j$



Network N:

direct edge from i to j if:
	i has leftovers (p_i - d_i > 0) and
	i doesn't produce j's favorite (v_i != v_j)