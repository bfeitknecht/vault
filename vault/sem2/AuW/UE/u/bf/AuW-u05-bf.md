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

![[AuW-script.pdf#page=213&rect=209,515,385,534|AuW-script, p.213]]

We split the set $C$ into two subsets, $C_{upper}=\{c_{u}\in C \ | \ c_{u}\prec_{c_{n}}c_{1}\}$ and $C_{lower} =\{c_{l}\in C \ | \ c_{l}\prec_{c_{1}}c_{n}\}$.


Starting point is $c_1$.
   
1. **Scan through the points to find the upper and lower hulls:**
- Initialize two empty stacks: one for the upper hull and one for the lower hull.
- Starting from the point with the lowest x-coordinate (the starting point), iterate through all the points once.
- For each point:
	- Check whether it belongs to the upper or lower hull by comparing its position relative to the previous points.
	- For the upper hull, keep removing points from the stack until the current point forms a clockwise turn with the top two points in the stack.
	- For the lower hull, keep removing points from the stack until the current point forms a counterclockwise turn with the top two points in the stack.
	- Push the current point onto the corresponding stack.
- This scanning step also takes O(n) time because each point is processed once.
  
2. **Combine the upper and lower hulls to form the convex hull:**
- Remove the last point from each hull to avoid duplicating the starting point.
- Concatenate the upper hull (in reverse order) with the lower hull to form the convex hull.
- This concatenation step takes O(n) time.















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
function ccw(p, q, r)
	return (q.x - p.x)(r.y - p.y) - (q.y - p.y)(r.x - p.x)
end

P' = {}
for p in P do
	p' = polar(p)
	P' += p'
end

Q = {}
for p' in P' do
	while Q.size() > 1 and ccw(Q.peaktwice(), Q.peak(), p') <= 0
		Q.pop
	end
	Q.push(p')
end

return Q
```

While it may seem that the time complexity of the loop is $O(n^2)$, because for each point it goes back to check if any of the previous points make a "right turn", it is actually $O(n)$, because each point is considered at most twice in some sense. Each point can appear only once as a point $(x_2, y_2)$ in a "left turn" (because the algorithm advances to the next point $(x_{3},y_{3})$ after that), and as a point $(x_{2},y_{2})$ in a "right turn" (because the point $(x_{2},y_{2})$ is removed).

Thus we have computed $conv(P)$ in $O(n)$.
$\square$
___
