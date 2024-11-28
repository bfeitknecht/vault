
- bellmam-ford (algorithm)
- MST


# Notes

- dijkstra (algorithm) fails on negative edge weighted graphs because it's greedy (can't consider better option)
- bellman ford works on negative edge weighted graphs
- graph has negative cycle means there is no minimum cost path (for nodes in cycle or adjacent to it)



```pseudo
\begin{algorithm}
\caption{Quicksort}
\begin{algorithmic}
    \Procedure{Quicksort}{$A, p, r$}
        \If{$p < r$}
            \State $q \gets $ \Call{Partition}{$A, p, r$}
            \State \Call{Quicksort}{$A, p, q - 1$}
            \State \Call{Quicksort}{$A, q + 1, r$}
        \EndIf
    \EndProcedure
      
    \Procedure{Partition}{$A, p, r$}
        \State $x \gets A[r]$
        \State $i \gets p - 1$
        \For{$j \gets p$ \To $r - 1$}
            \If{$A[j] < x$}
                \State $i \gets i + 1$
                \State exchange
                $A[i]$ with $A[j]$
            \EndIf
        \State exchange $A[i]$ with $A[r]$
        \EndFor
    \EndProcedure
\end{algorithmic}
\end{algorithm}
```
