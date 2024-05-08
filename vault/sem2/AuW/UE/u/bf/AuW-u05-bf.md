![[AuW-u05-e.pdf#page=1&rect=87,512,518,635|AuW-u05-e, p.1]]

## (a)
![[AuW-u05-e.pdf#page=1&rect=106,484,518,509|AuW-u05-e, p.1]]

We use the LocalRepair algorithm, with input $S=\{s_{i\leq n} | s_{j}(x)< s_{j+1}(x), 1\le j < n\}$ which, per definition, is sorted by $x$ coordinates.

![[AuW-script.pdf#page=223&rect=99,442,496,720|AuW-script, p.223]]

![[AuW-script.pdf#page=223&rect=114,248,481,300|AuW-script, p.223]]

Thus we have computed $conv(S)$ in $O(n)$.
$\square$
___


## (b)
![[AuW-u05-e.pdf#page=1&rect=106,418,518,480|AuW-u05-e, p.1]]

We use the JarvisWrap algorithm, with input $c_0$, which runs in $O(nh)$.


![[AuW-script.pdf#page=212&rect=115,517,481,632|AuW-script, p.212]]
![[AuW-script.pdf#page=213&rect=99,606,496,720|AuW-script, p.213]]
![[AuW-script.pdf#page=214&rect=101,520,496,677|AuW-script, p.214]]

Since $h$ will be

![[AuW-script.pdf#page=214&rect=113,394,484,460|AuW-script, p.214]]

$\square$
___


## (c)
![[AuW-u05-e.pdf#page=1&rect=106,375,519,415|AuW-u05-e, p.1]]

Since the points $p$ in $P$ are sorted anticlockwise and P is a simple polygon (no crossing edges), we can turn every point's $x, y$ coordinates into their polar system equivalent ($r, \theta$). This takes $O(n)$ in total. 

We then start building a stack, where the top element is always the last point considered a potential candidates for the convex hull's edge points.
```
P' = {}
for p in P do
	p' = polar(p)
	P' += p'
end

Q = {}
for p' in P' do
	while Q.size() > 1 and ccw(Q.2nd(), Q.1st(), p') <= 0
		Q.pop
	end
	Q.push(p')
end

function(p, q, r)
	
end
```







Thus we have computed $conv(P)$ in $O(n)$.
$\square$
___
