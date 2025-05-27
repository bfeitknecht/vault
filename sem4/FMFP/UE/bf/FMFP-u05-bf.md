
![[FMFP-e-u05.pdf#page=1&rect=75,83,442,368|FMFP-e-u05, p.1]]

## 1.
```haskell
f = (\x y z -> x (y z))
x :: a -> b
y :: c -> d
z :: c

f :: (a -> b) -> (c -> a) -> b
```

## 2.
```haskell
f = (\x -> (\y -> (x, y)))
x :: a
y :: b

f :: a -> b -> (a, b)
```

## 3.
```haskell
f = (\x -> )
```
