
## Literature
![[auw-network-flow-multi-source&sink.png]]
![[auw-network-flow-multi-source&sink-img.png]]


![[auw-network-flow-vertex-capacity.png]]
![[auw-network-flow-vertex-capacity-img.png]]


## Graph

```mermaid
flowchart TD

id0((S))
id1((t1))
id2((t2))
id3((k1))
id4((k2))
id5((T))

id0 -->|"0/c1"| id1 -->|"0/1"| id3 & id4
id0 -->|"0/c2"| id2 -->|"0/1"| id3 & id4


id3 -->|"0/d1"| id5
id4 -->|"0/d2"| id5


```

## Code
```java
public boolean possible() {
	int n = In.readInt(); // number of children
	int m = In.readInt(); // number of different toys
	int S = 0;            // supersource
	int T = n+m+1;        // supersink
	int D = 0;            // total deserved toys
      
	Graph G = new Graph(n+m+2);
	for (int i = 1; i <= n+m; i++) {
		if (i <= n) {             	// iterate over kids
			int d = In.readInt();   // how many toys i-th kid deserves
			G.addEdge(i, T, d);     // connect kid to sink w/ capacity d
			D += d;                 // sum to total deserved toys
		}
		else {                    	// iterate over toy types
			int c = In.readInt();   // how many copies of i-th toy
			G.addEdge(S, i, c);     // connect source to toy type w/ capacity c
			for (int j = 1; j <= n; j++)	// iterate over kids
				G.addEdge(i, j, 1);         // connect toy to kid w/ capacity c
		}
	}
	return D == G.computeMaximumFlow(S, T);
}
```