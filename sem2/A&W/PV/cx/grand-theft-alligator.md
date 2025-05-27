


make capacity of unpoliced roads = number of policed roads \* max suspiciousness
and check if the maxFlow is bigger (or equal) than than

```java
int omw = G.computeMaximumFlow(s, z);
int ttyl = G.computeMaximumFlow(z, t);
int alligators = Math.min(omw, ttyl);

boolean glitch = alligators >= 100000;
Out.println(glitch? "RICH" : alligators);
```
