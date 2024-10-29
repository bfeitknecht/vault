
Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099


# 6.1
![[A&D-e-u06.pdf#page=1&rect=68,300,533,497|A&D-e-u06, p.1]]

## (e)
![[A&D-e-u06.pdf#page=1&rect=84,117,533,168|A&D-e-u06, p.1]]

We use induction on $h = \mathrm{height}(T_{k})$ to prove that the statement holds for all $k \in \mathbb{N}$.

formulate invariant $I(h) = \text{"blabla"}$



**Base Case** $h \leq 3$

no leafs -> trivially holds (T_1) :: n = 1
only one child -> only one subtree -> holds :: n = 2
two children -> holds per n=2 and root also holds :: n = 3


**Induction Hypothesis** $h = h'$

exists a height s.t. equality holds for left and right subtree



**Induction Step** $h = h'+1$




## (f)
![[A&D-e-u06.pdf#page=1&rect=87,80,534,113|A&D-e-u06, p.1]]
![[A&D-e-u06.pdf#page=2&rect=86,756,523,773|A&D-e-u06, p.2]]

probably something with the last tree..



# 6.3
![[A&D-e-u06.pdf#page=2&rect=65,126,525,233|A&D-e-u06, p.2]]

## (a)
![[A&D-e-u06.pdf#page=2&rect=85,96,526,126|A&D-e-u06, p.2]]

```
function A(n)
    if n <= 2 then return n
    else
        if n % 2 == 1 then
            return (A(n-1) + A(n-2)) / 2
        else
            return 2 / ((1/A(n-2)) + (1/A(n-3)))
        end
    end
end
```


## (b)
![[A&D-e-u06.pdf#page=3&rect=84,755,524,772|A&D-e-u06, p.3]]

probably $2^{n}$


## (c)
![[A&D-e-u06.pdf#page=3&rect=85,720,526,750|A&D-e-u06, p.3]]

## (d)
![[A&D-e-u06.pdf#page=3&rect=85,528,532,717|A&D-e-u06, p.3]]




# 6.4
![[A&D-e-u06.pdf#page=3&rect=64,297,532,423|A&D-e-u06, p.3]]

## (a)
![[A&D-e-u06.pdf#page=3&rect=84,116,533,295|A&D-e-u06, p.3]]



## (b)
![[A&D-e-u06.pdf#page=4&rect=83,570,537,774|A&D-e-u06, p.4]]



## (c)
![[A&D-e-u06.pdf#page=4&rect=84,406,538,569|A&D-e-u06, p.4]]

