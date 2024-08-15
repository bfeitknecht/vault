
## Atomicity
Atomic register locks :: bakery, peterson
Atomic method locks :: TAS, CAS, TATAS, BackOff

Atomic operations in theory: {1: `testAndSet()`} returns true if success, {2: `compareAndSwap()`} returns the old value.
Atomic operations in java: {1: `getAndSet()`} returns old value {2: `compareAndSet()`} returns true if success.



## Locks
![[PProg-scratch-AD8EFA79A56F1E6E8C45D6A65178F3CC.pdf#page=1&rect=86,709,511,789|locks-overview, p.1]]
Locks guarantee: {1: mutual exclusion}, {2: deadlock freedom} and {3: starvation freedom}. Might also be {4: fair (FIFO, i.e. first-come-first-serve)}.

Starvation freedom implies :: deadlock freedom.
Deadlock freedom and fair implies :: starvation freedom.
Wait freedom implies :: lock freedom.

busy waiting (spinning) :: additional cpu cycles used
blocking :: additional overhead from context switches

>[!quote] Locks
>
> ![[PProg-scratch-B9125BBC7BBD7EDC0AAA93A686F7C3D7.pdf#page=26&rect=101,116,267,188|PProg-pvw-script, p.25]]
> ![[PProg-scratch-B9125BBC7BBD7EDC0AAA93A686F7C3D7.pdf#page=26&rect=327,108,495,191|PProg-pvw-script, p.25]]
> ```java
> public class SemaphoreBarrier {
> 	private final int threads = 8;
> 	
> 	public synchronized void barrier() {
> 		volatile int count = 0;
> 		Semaphore s0 = new Semaphore(0);
> 		Semaphore s1 = new Semaphore(1);
> 		
> 		count++;
> 		if (count == threads) {
> 			s1.acquire(); s0.release();
> 		}
> 		s0.acquire(); s0.release();
> 		
> 		count--;
> 		if (count == 0) {
> 			s0.acquire(); s1.release();
> 		}
> 		s1.acquire(); s0.release();
> 	}
> }
> ```
>

<!--
```pseudo
int threads = number of threads
int[] level(threads)
int[] lastEnter(threads)

lock(me) {
	for (i = 1, threads) {
		level[me] = 1;
		lastEnter[i] = me;
		bool meLast = lastEnter[i] == me;
		bool othersFirst = exists(k!=me), level[k] >= i;
		while (lastMe && othersFirst) {}
	}
}

unlock(me) {
	level[me] = 0;
}
```
-->


filter lock
![[PProg-scratch-71CCD07AC60753C6A7D6B20686CD8AFB.png]]


bakery lock
![[PProg-scratch-319A2972C2E535FEBA780E4D659DDAE7.png]]


CAS spinlock
![[PProg-scratch-DD292485FEAE5146478020051CDD616C.png]]


## History
![[PProg-scratch-C63E706ACA288EB9D0DC92F106BEAC5E.png]]
Linarizability implies :: sequential consistency.
Not sequentially consistent implies :: not linearizable.
Sequential consistency and quiescent consistency :: are incomparable!


Cosensus protocol has to be: {1: valid, one of the applicable choices}, {2: wait-free, finite time to conclusion} and {3: consistent, all agree on the same choice}.
