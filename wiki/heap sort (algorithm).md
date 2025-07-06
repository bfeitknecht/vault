
The **heap sort** algorithm uses a minimum [[heap (data structure)]] to organize elements. Since the heap operations are logarithmic in the number of elements and it's iterated $n$ times, the algorithm runs in $\Theta(n \log n)$. It's basically [[selection sort (algorithm)]] but with an appropriate data structure.

```
function heapsort(A)
    let n = length of A
    let H = heapify(A)
    
    for i in 1 .. n
        A[i] = H.pop()
    end
end
```


