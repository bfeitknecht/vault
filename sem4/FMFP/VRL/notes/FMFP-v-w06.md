---
module: "[[FMFP]]"
prev: "[[FMFP-v-w05]]"
next: "[[FMFP-v-w07]]"
---


# Info


# Topics
- bind and return


# Notes
```haskell
class Functor f where
    fmap :: (a -> b) -> f a -> f b
    (<$) :: a -> f b -> f a
    {-# MINIMAL fmap #-}

class Functor f => Applicative f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
    (*>) :: f a -> f b -> f b
    (<*) :: f a -> f b -> f a
    liftA2 :: (a -> b -> c) -> f a -> f b -> f c
    {-# MINIMAL pure, ((<*>) | liftA2) #-}

class Semigroup a where
    (<>) :: a -> a -> a

class Semigroup a => Monoid a where
    mempty :: a
    mappend :: a -> a -> a
    mconcat :: [a] -> a
    {-# MINIMAL mempty | mconcat #-}

class Applicative m => Monad m where
    (>>=) :: m a -> (a -> m b) -> m b
    (>>) :: m a -> m b -> m b
    return :: a -> m a
    {-# MINIMAL (>>=) #-}
```
