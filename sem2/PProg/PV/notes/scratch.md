
## Atomicity
Atomic register locks :: bakery, peterson
Atomic method locks :: TAS, CAS, TATAS, BackOff

Atomic operations in theory: {1: `testAndSet()`} returns true if success, {2: `compareAndSwap()`} returns the old value.
Atomic operations in java: {1: `getAndSet()`} returns old value {2: `compareAndSet()`} returns true if success.



## Locks
![[locks-overview.pdf#page=1&rect=86,709,511,789|locks-overview, p.1]]
Locks guarantee: {1: mutual exclusion}, {2: deadlock freedom} and {3: starvation freedom}. Might also be {4: fair (FIFO, i.e. first-come-first-serve)}.

Starvation freedom implies :: deadlock freedom.
Deadlock freedom and fair implies :: starvation freedom.
Wait freedom implies :: lock freedom.

busy waiting (spinning) :: additional cpu cycles used
blocking :: additional overhead from context switches

>[!quote]- Locks
>
> ![[PProg-pvw-script.pdf#page=26&rect=101,116,267,188|PProg-pvw-script, p.25]]
> ![[PProg-pvw-script.pdf#page=26&rect=327,108,495,191|PProg-pvw-script, p.25]]
> 
>


## Mixer
Cosensus protocol has to be: {1: valid, one of the applicable choices}, {2: wait-free, finite time to conclusion} and {3: consistent, all agree on the same choice}.

Linarizability implies :: sequential consistency.
Not sequentially consistent implies :: not linearizable.
Sequential consistency and quiescent consistency :: are incomparable!

