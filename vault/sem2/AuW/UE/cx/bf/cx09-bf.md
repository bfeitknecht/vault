

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

id0f((0))
id1f((1))
id2f((2))
id3f((3))

id0a((a))
id0b((b))
id0c((c))

id0t((0))
id1t((1))
id2t((2))
id3t((3))

idF --> id0f & id1f & id2f & id3f
id0t & id1t & id2t & id3t --> idT

id0f --> id0a & id0b & id0c

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