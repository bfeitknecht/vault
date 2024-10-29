
Antonia Tomova, 23-957-590,
Basil Feitknecht, 23-922-099

# 6.1
![[A&D-e-u06.pdf#page=1&rect=68,300,533,497|A&D-e-u06, p.1]]

## (e)
![[A&D-e-u06.pdf#page=1&rect=84,95,534,148|A&D-e-u06, p.1]]

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
![[A&D-e-u06.pdf#page=2&rect=84,722,527,772|A&D-e-u06, p.2]]


probably something with the last tree..



# 6.3
![[A&D-e-u06.pdf#page=2&rect=66,87,527,199|A&D-e-u06, p.2]]

## (a)
![[A&D-e-u06.pdf#page=3&rect=85,740,526,772|A&D-e-u06, p.3]]

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
![[A&D-e-u06.pdf#page=3&rect=85,720,527,741|A&D-e-u06, p.3]]


probably $2^{n}$


## (c)
![[A&D-e-u06.pdf#page=3&rect=84,687,527,718|A&D-e-u06, p.3]]


## (d)
![[A&D-e-u06.pdf#page=3&rect=84,490,528,682|A&D-e-u06, p.3]]





# 6.4
![[A&D-e-u06.pdf#page=3&rect=65,265,531,392|A&D-e-u06, p.3]]


## (a)
![[A&D-e-u06.pdf#page=3&rect=83,90,531,265|A&D-e-u06, p.3]]




## (b)
![[A&D-e-u06.pdf#page=4&rect=83,575,529,771|A&D-e-u06, p.4]]



## (c)
![[A&D-e-u06.pdf#page=4&rect=84,405,529,570|A&D-e-u06, p.4]]


