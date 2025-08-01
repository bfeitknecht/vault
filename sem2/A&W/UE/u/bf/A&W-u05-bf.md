![[A&W-e-u05.pdf#page=1&rect=87,512,518,635|A&W-e-u05, p.1]]

<div class="page-break" style="page-break-before: always;"></div>

## (a)
![[A&W-e-u05.pdf#page=1&rect=106,484,518,509|A&W-e-u05, p.1]]

We use the LocalRepair algorithm with input $S$ which, per definition, is sorted by $x$ coordinates.

![[A&W-script.pdf#page=223&rect=99,442,496,720|A&W-script, p.223]]

![[A&W-script.pdf#page=223&rect=114,248,481,300|A&W-script, p.223]]

Thus we have computed $conv(S)$ in $O(n)$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


## (b)
![[A&W-e-u05.pdf#page=1&rect=106,418,518,480|A&W-e-u05, p.1]]

![[A&W-script.pdf#page=213&rect=209,515,385,534|A&W-script, p.213]]

We split the set $C$ into two subsets, $C_{upper}=\{c_{u}\in C \ | \ c_{u}\prec_{c_{n}}c_{1}\}$ and $C_{lower} =\{c_{l}\in C \ | \ c_{l}\prec_{c_{1}}c_{n}\}$. Since the set is non crossing, we now have two basically sorted subsets. We run LocalRepair on them and merge the two resulting convex hulls.

Thus, we have computed $conv(C)$ in $O(n)$.
$\square$

<div class="page-break" style="page-break-before: always;"></div>


## (c)
![[A&W-e-u05.pdf#page=1&rect=106,375,519,415|A&W-e-u05, p.1]]

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

While it may seem that the time complexity of the loop is $O(n^2)$, because for each point it goes back to check if any of the previous points make a "right turn", it is actually $O(n)$, because each point is considered at most twice in some sense. Each point can appear only once as a point $(x_2, y_2)$ in a "left turn" (because the algorithm advances to the next point $(x_{3},y_{3})$ after that), and as a point $(x_{2},y_{2})$ in a "right turn" (because the point $(x_{2},y_{2})$ is removed).

Thus we have computed $conv(P)$ in $O(n)$.
$\square$
