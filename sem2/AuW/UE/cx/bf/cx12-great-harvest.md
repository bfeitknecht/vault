
## Stats

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

## Graph

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

## Network

```mermaid
flowchart LR

idF{"S"}
idT{"T"}

%% from
idf0((0))
idf1((1))
idf2((2))
idf3((3))

%% to
idt0((0))
idt1((1))
idt2((2))
idt3((3))
  

%% variety
id0a((a))
id1b((b))
id2c((c))
id3b((b))
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


idF ---|"?/12"| idf0
idF ---|"?/6"| idf1
idF ---|"?/3"| idf2
idF ---|"?/5"| idf3

idt0 ---|"?/4"| idT
idt1 ---|"?/1"| idT
idt2 ---|"?/8"| idT
idt3 ---|"?/13"| idT

idf0 --- id0a === idt0
id0a -.- idt1
idf1 --- id1b === idt1
id2c -.- idt1

id0a -.- idt2
id1b -.- idt2
idf2 --- id2c === idt2

id0a -.- idt3
idf3 --- id3b === idt3
id2c -.- idt3
```

doesn't work!

## Alternate

```mermaid
%%{init: {'flowchart': {'curve': 'basis'}}}%%

flowchart TD

idS{"S"}
idT{"T"}

%% variety 1
id1a((0))
id2a((1))
id3a((2))
id4a((3))

%% variety 2
id1b((4))
id2b((5))
id3b((6))
id4b((7))

%% variety 3
id1c((8))
id2c((9))
id3c((10))
id4c((11))

%% cities
id1((12))
id2((13))
id3((14))
id4((15))
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

idS ---|"?/12"| id1a
idS ---|"?/6"| id2b
idS ---|"?/3"| id3c
idS ---|"?/5"| id4b

id1a & id1b & id1c --- id1
id2a & id2b & id2c --- id2
id3a & id3b & id3c --- id3
id4a & id4b & id4c --- id4

id1a --- id2a

id2a --- id3a & id4a
id2b --- id3b
id2c --- id4c

id3c --- id2c

id1 ---|"?/4"| idT
id2 ---|"?/1"| idT
id3 ---|"?/8"| idT
id4 ---|"?/13"| idT


```

![[cx12-great-harvest-graph.png]]


## Code

```java
public static void testCase() {
	int n = In.readInt();   // cities
	int m = In.readInt();   // roads
	int s = 4*n;
	int t = s+1;
	int I = Integer.MAX_VALUE;
	
	int[] variety = new int[n];
	int demands = 0;
	int produce = 0;
	
	Graph G = new Graph(4*n+2);
	
	for (int i = 1; i <= n; i++) {
		int v = In.readInt();
		int p = In.readInt();
		int d = In.readInt();
		variety[i-1] = v;
		demands += d;
		produce += p;
		
		int a = 4*(i-1);
		int b = a+4;
		G.addEdge(s, a+v, p);
		G.addEdge(b, t, d);
		
		for (int j = 1; j <= 3; j++) {
			G.addEdge(a+j, b, I);
		}
	}
	
	for (int i = 1; i <= m; i++) {
		int a = In.readInt();
		int b = In.readInt();
		
		for (int j = 1; j <= 3; j++) {
			if (variety[b] != j) {
				G.addEdge(4*a+j, 4*b+j, I);
			}
		}
	} 
	
	boolean possible = G.computeMaximumFlow(s, t) == demandsy;
	Out.println(possible? "y" : "n");
}
```


pass all but one case.
probably A -x B -> C, where v(A) == v(B) => A -x B but C needs some from A, can't get it because A is not connected to B





```mermaid
flowchart LR
0-->2
```

## New Approach


```mermaid
flowchart LR

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ids0v1((0))
ids0v2((1))
ids0v3((2))
idt0v1((3))
idt0v2((4))
idt0v3((5))
idc0((6))

ids1v1((7))
ids1v2((8))
ids1v3((9))
idt1v1((10))
idt1v2((11))
idt1v3((12))
idc1((13))

ids2v1((14))
ids2v2((15))
ids2v3((16))
idt2v1((17))
idt2v2((18))
idt2v3((19))
idc2((20))

ids3v1((21))
ids3v2((22))
ids3v3((23))
idt3v1((24))
idt3v2((25))
idt3v3((26))
idc3((27))

idS((28))
idT((29))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

idS --- ids0v1 & ids1v2 & ids2v3 & ids3v2

ids0v1 & ids0v2 & ids0v3 --- idc0 --- idt0v1 & idt0v2 & idt0v3 --- idc0
ids1v1 & ids1v2 & ids1v3 --- idc1 --- idt1v1 & idt1v2 & idt1v3 --- idc1
ids2v1 & ids2v2 & ids2v3 --- idc2 --- idt2v1 & idt2v2 & idt2v3 --- idc2
ids3v1 & ids3v2 & ids3v3 --- idc3 --- idt3v1 & idt3v2 & idt3v3 --- idc3 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```
