


```java
public static void testCase() {
	int n = In.readInt();   // bikes
	int m = In.readInt();   // shops
	int k = In.readInt();   // parts
	int s = m*(k+1)+n;      // source
	int t = s+1;            // target
	
	Graph G = new Graph(m*(k+1)+n+2);
	
	// source -> shops -> parts
	for (int i = 0; i < m; i++) {
		int shop = i*(k+1);   // i-th shop
		G.addEdge(s, shop, Integer.MAX_VALUE);
		for (int p = 1; p <= k; p++) {
			int stock = In.readInt();
			G.addEdge(shop, shop+p, stock);
		}
	}
	
	// local shop's parts -> bikes -> target
	for (int i = 0; i < n; i++) {
		int bike = m*(k+1)+i;     // i-th bike
		int d = In.readInt();     // how many local shops
		for (int j = 0; j < d; j++) {
			int local = In.readInt()*(k+1);
			// p-th product from j-th local shop
			for (int p = 1; p <= k; p++) {
				G.addEdge(local+p, bike, 1);
			}
		}
		G.addEdge(bike, t, k);
	}
	
	boolean possible = G.computeMaximumFlow(s, t) == n*k;
	Out.println(possible? "yes" : "no");
}
```

works, but this thing breaks it..


```mermaid
flowchart LR

id88 --> id0
id0 --> id1
id88 --> id18
id18 --> id19
id88 --> id36
id36 --> id37
id19 --> id54
id54 --> id89
id37 --> id55
id55 --> id89
id1 --> id56
id56 --> id89
id1 --> id57
id57 --> id89
id37 --> id58
id58 --> id89
id19 --> id59
id59 --> id89
id37 --> id60
id60 --> id89
id37 --> id61
id61 --> id89
id37 --> id62
id62 --> id89
id37 --> id63
id63 --> id89
id37 --> id64
id64 --> id89
id1 --> id65
id65 --> id89
id19 --> id66
id66 --> id89
id19 --> id67
id67 --> id89
id37 --> id68
id68 --> id89
id37 --> id69
id69 --> id89
id37 --> id70
id70 --> id89
id37 --> id71
id71 --> id89
id37 --> id72
id72 --> id89
id37 --> id73
id73 --> id89
id37 --> id74
id74 --> id89
id19 --> id75
id75 --> id89
id37 --> id76
id76 --> id89
id1 --> id77
id77 --> id89
id37 --> id78
id78 --> id89
id19 --> id79
id79 --> id89
id37 --> id80
id80 --> id89
id37 --> id81
id81 --> id89
id37 --> id82
id82 --> id89
id37 --> id83
id83 --> id89
id19 --> id84
id84 --> id89
id19 --> id85
id85 --> id89
id37 --> id86
id86 --> id89
id19 --> id87
id87 --> id89
```



```mermaid
flowchart TD

id5((s))
id4((shop0))
id1((p1))
id2((p2))
id3((p3))
id6((bike))
id7((t))

id5 --> id4
id4 --> id1 & id2 & id3

subgraph p0
	id1
	id2
	id3
end

p0 --> id6 --> id7

```


i have no idea what to do



i have an idea of what to do



```mermaid
flowchart LR

idS((s))
idT((t))

ids0((0))
ids1((3))
ids2((6))

ids0p1((1))
ids0p2((2))

ids1p1((4))
ids1p2((5))

ids2p1((7))
ids2p2((8))

idb0((9))
idb1((10))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

idT -->|"*"| ids0 & ids1 & ids2

ids0 -->|"1"| ids0p1
ids0 -->|"0"| ids0p2

ids1 -->|"1"| ids1p1
ids1 -->|"0"| ids1p2

ids2 -->|"1"| ids2p1
ids2 -->|"1"| ids2p2

ids0p1 --> idb0
ids0p2 -.-x idb0

ids1p1 --> idb0
ids1p2 -.-x idb0

ids2p1 & ids2p2 --> idb1


idb0 & idb1 -->|"k"| idS

```
