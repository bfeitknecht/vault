> [!quote]
> - [x] FS19 ✅ 2025-07-22
> - [ ] FS20
> - [ ] FS21-A
> - [ ] FS21-B
> - [ ] FS22
> - [ ] FS23
> - [ ] FS24

- strong induction for IMP
    - big-step is structural on shape of tree
	- small-step is on length of derivation sequence


```haskell
foldPath :: b -> (Int -> Direction -> b -> b) -> Path -> b
foldPath e n p = case p of
    End -> e
    Node i d p' -> n i d $ foldPath e n p'
```