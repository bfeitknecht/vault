#todo 

A **search algorithm** is an [[algorithm]] designed to solve a [[search problem]], i.e. to retrieve information stored within particular [[data structure]], or calculated in the search space of a problem domain, with either discrete or continuous values. The lower bound for comparison based search algorithms is $\Omega(\log n)$.

# Examples

## Linear Search

For *linear search* we just iterate through all elements until we find the one we want. Since we iterate at most as many times as there are elements, this is $O(n)$.
```
begin
    for element in collection
        if element is search
            return element
        end
    end
end
```


## Binary Search

If our data structure implements some sort of comparison, i.e. a [[partial order relation]], we can use *binary search*. This is a [[divide and conquer]] algorithm, that iteratively splits up the workload, halving it in each step.
```
begin
    
end
```
