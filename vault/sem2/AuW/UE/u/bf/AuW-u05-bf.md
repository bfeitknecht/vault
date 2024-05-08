![[AuW-u05-e.pdf#page=1&rect=87,512,518,635|AuW-u05-e, p.1]]

## (a)
![[AuW-u05-e.pdf#page=1&rect=106,484,518,509|AuW-u05-e, p.1]]

We use the LocalRepair algorithm, with input $S=\{s_{i\leq n} | s_{j}(x)< s_{j+1}(x), 1\le j < n\}$ which, per definition, is sorted by $x$ coordinates.

![[AuW-L20-local-repair.pdf#page=38&rect=109,99,888,641|AuW-L20-local-repair, p.38]]

![[AuW-L20-local-repair.pdf#page=39&rect=64,508,985,633|AuW-L20-local-repair, p.39]]

Thus we have computed $conv(S)$ in $O(n)$.
$\square$
___


## (b)
![[AuW-u05-e.pdf#page=1&rect=106,418,518,480|AuW-u05-e, p.1]]

We use LocalRepair again, though this time, we iterate over the points given their index. At each step $i$, we consider only the points with $c_{j< n} \prec_{c_{i}} c_{n}$, that is all the points to the right of the line connecting the current point to the 

with  $c_{i}(x) >c_{i-1}(x)$. 

$\square$
___


## (c)
![[AuW-u05-e.pdf#page=1&rect=106,375,519,415|AuW-u05-e, p.1]]

Since the points $p$ in $P$ are sorted anticlockwise and P is a simple polygon (no crossing edges), we can turn every point's $x, y$ coordinates into their polar system equivalent. This takes $O(n)$ in total.
```
P' = {}
for p in P do
	p' = toRadian(p(x), p(y))
	P' += p'
end

Q = {}
while 
for p' in P' do
```



![[AuW-L19-convex-hulls.pdf#page=28&rect=25,92,339,227|AuW-L19-convex-hulls, p.10]]

![[AuW-script.pdf#page=214&rect=113,394,484,460|AuW-script, p.214]]

Thus we have computed $conv(P)$ in $O(n)$.
$\square$
___
