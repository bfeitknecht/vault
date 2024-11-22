

# 9.2   Short Statements about Directed Graphs ![[A&D-e-u09.pdf#page=1&rect=65,324,532,369|A&D-e-u09, p.1]]
## (a) ![[A&D-e-u09.pdf#page=1&rect=85,306,533,321|A&D-e-u09, p.1]]

True. Proof by contradiction. Assume $G$ has no sources, $\forall v \in V : \deg_{in}(v) \geq 1$. Then we find a topological sorting. Contradiction. This topological sorting has to start from a source but by assumption there are none. Furthermore, a topological sorting is possible if and only if the graph is a directed acyclic cycle. Contraposition of the fact that it doesn't implies that $G$ contains a cycle.
$\square$

## (b) ![[A&D-e-u09.pdf#page=1&rect=85,271,534,301|A&D-e-u09, p.1]]

False. Consider the following counter example. Observe that every vertex has even in-degree and out-degree, $\forall v \in V : \deg_{in}(v) \equiv_{2} \deg_{out}(v) \equiv_{2} 0$. However, $G$ does not contain a directed eulerian walk.
```tikz
\usepackage{tikz} 
\usetikzlibrary {graphs}

\begin{document}

\tikz[nodes={draw,circle}] {
  \node (1) at (-1,0) {1};
  \node (2) at (0,1) {2};
  \node (3) at (0,-1) {3};
  \node (4) at (1, 1) {4};
  \node (5) at (1, -1) {5};
  \node (6) at (2, 0) {6};

  \graph[]{
    (1) <-> {(2), (3)},
    (2) <-> (3),
    (4) <-> {(5), (6)},
    (5) <-> (6)
  };
}

\end{document}
```
$\square$

## (c) ![[A&D-e-u09.pdf#page=1&rect=86,237,532,266|A&D-e-u09, p.1]]
![[A&D-e-u09.pdf#page=2&rect=61,603,540,780|A&D-e-u09, p.2]]

True. $A, B, C, F, D, H, I, G$ is a topological sorting.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


# 9.4   Longest Path in DAG ![[A&D-e-u09.pdf#page=3&rect=67,337,530,380|A&D-e-u09, p.3]]

## (a) ![[A&D-e-u09.pdf#page=3&rect=85,319,533,332|A&D-e-u09, p.3]]

#todo 

## (b) ![[A&D-e-u09.pdf#page=3&rect=86,242,534,312|A&D-e-u09, p.3]]

#todo 
![[A&D-e-u09.pdf#page=4&rect=82,714,520,732|A&D-e-u09, p.4]]


<div class="page-break" style="page-break-before: always;"></div>


# 9.5   DFS doesn't solve Eulerian Cycle ![[A&D-e-u09.pdf#page=4&rect=67,638,530,668|A&D-e-u09, p.4]]
![[A&D-e-u09.pdf#page=4&rect=66,454,533,632|A&D-e-u09, p.4]]

## (a) ![[A&D-e-u09.pdf#page=4&rect=85,129,528,406|A&D-e-u09, p.4]]

#todo 

<div class="page-break" style="page-break-before: always;"></div>

## (b) ![[A&D-e-u09.pdf#page=4&rect=85,94,528,123|A&D-e-u09, p.4]]
![[A&D-e-u09.pdf#page=5&rect=84,525,531,771|A&D-e-u09, p.5]]

#todo 
