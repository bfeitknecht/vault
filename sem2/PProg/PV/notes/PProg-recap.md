>[!todo]-
> - [x] add gustafson's law ➕ 2024-07-08 ✅ 2024-07-09
> - [x] add amdahl's law ➕ 2024-07-08 ✅ 2024-07-09
> - [x] recap locks ➕ 2024-07-09 ✅ 2024-07-22
>	- [x] what is a lock? ✅ 2024-07-22
>	- [x] common types of locks ✅ 2024-07-22
>	- [x] problems with locking ✅ 2024-07-22
>



semaphore, barriers, specific locks, etc. NICHT auswendig lernen
aber konzeptuel (bakery lock: lexikographische ordnung, etc.)


___


## Threads, Concurrency, Parallelism

> [!quote]+ Concurrency vs Parallelism
> 
> ![[PProg-w02-benji.pdf#page=13&rect=34,214,845,501|PProg-w02-benji, p.13]]
> → concurrency is possible with a single thread, parallelism isn't! 

> [!quote]+ Thread State Model
> ![[PProg-w03-benji.pdf#page=61&rect=149,54,834,413|PProg-w03-benji, p.61]]

> [!quote]+ How to create and run a Thread
> 
>
> In Java, there’s the `java.lang.Thread` class for managing Threads. The most important methods are:
> ![[PProg-summary-rböhr.pdf#page=5&rect=99,151,556,237|PProg-abstract, p.5]]
>
>
>> [!quote]- Anonymous Inline
>> ![[PProg-u02-e.pdf#page=2&rect=86,125,289,216|PProg-u02-e, p.2]]
>> Mainly applicable for small tasks.
>
>> [!quote]- Implementing Runnable Interface
>> ![[PProg-u02-e.pdf#page=3&rect=86,537,341,683|PProg-u02-e, p.3]]
>> ![[PProg-u02-e.pdf#page=3&rect=88,463,320,511|PProg-u02-e, p.3]]
>> Most flexibility, greater control. This can come in handy if you have a computation that relies on a lot of shared state, but is at the same time fairly complicated. In that scenario, you want the class that implements your task to implement Runnable. Using this method, you can share a single task object between multiple threads.
>
>>[!quote]- Inherit from Thread Class
>> ![[PProg-u02-e.pdf#page=3&rect=87,281,333,435|PProg-u02-e, p.3]]
>> ![[PProg-u02-e.pdf#page=3&rect=86,194,282,254|P Prog-u02-e, p.3]]
>> Must override `run()` method!
>
>
>> [!warning]
>>Always use `.start()` to start a Thread!
>![[PProg-summary-rböhr.pdf#page=6&rect=82,497,543,545|PProg-abstract, p.6]]
>
>
>>[!note] FYI
> *Daemon* threads are out of the user scope (garbage collection, etc.). When all non-daemon threads terminate, the JVM terminates the program.



## Atomic Operations and Types

![[PProg-w04-benji.pdf#page=52&rect=167,19,942,147|PProg-w04-benji, p.52]]

> [!idea] What is an atomic operation?
>An operation is atomic if no other thread can see it partly executed. Atomic, as in “appears indivisible”. However, does not mean it’s implemented as single instruction.



## Pipeline

![[PProg-w04-benji.pdf#page=58&rect=120,102,846,413|PProg-w04-benji, p.58]]
![[PProg-w05-benji.pdf#page=13&rect=91,36,610,331|PProg-w05-benji, p.13]]



## Amdahl's Law

> [!quote]+ What is Amdahl's Law?
>> [!idea]- Terminoligy
>>"Specifies the maximum amount of speedup that can be achieved for a program with a given sequential part. The pessimistic view on scalability."
>
>Let $\mathbf{f}$ denote the non-parallelizable, serial fraction of the total work done in a program and $P$ the number of processors at our disposal. Then, the following inequality holds:
>$$
>S_{P} \leq \frac{1}{\mathbf{f}+\frac{1-\mathbf{f}}{P}}
>$$
>Where, as the number of processors increases to infinity, the speedup approaches the reciprocal of the program's serial fraction. $P \overset{\infty}{\rightarrow} S_{\infty} \leq \frac{1}{\mathbf{f}}$.
>Amdahl’s law is based on the assumption that the problem size is fixed and that the time is minimized.
>
> **A**mdahl **P**essimisistic


## Gustafson's Law

> [!quote]+ What is Gustafson's Law?
>> [!idea]- Terminoligy
>>"Specifies how much more work can be performed for a given fixed amount of time by adding more processors. The optimistic view on scalability."
>
>Let $\mathbf{f}$ denote the non-parallelizable, serial fraction of the total work done in the program and $P$ the number of processors at our disposal. Then, we get
>$$
>\begin{align}
>S_{P} &= \mathbf{f} + P(1-\mathbf{f}) \\
>&= P - \mathbf{f}(P-1)
>\end{align}
>$$
> 
> **G**ustafson **O**ptimistic


## Locks

> [!quote]+ What is a Lock?
> Locks are primitives with atomic operations: 
> - new: Make a new lock, initially “not held" 
> - acquire: Blocks if this lock is already currently “held” 
> - release: Makes this lock “not held” (if more than 1 threads are blocked on the lock, exactly one will acquire it)
>

> [!quote]+ Some Common Types of Locks
>> [!idea]- Reentrant Lock
>>  Re-entrant lock (recursive lock) stores the thread that currently holds it and a count. If the current holder calls acquire, it does not block but increments the count. On release, the count is decremented and if the count is 0, the lock becomes not held.
>> 
>
>> [!idea]- Decker Lock
>> Decker’s Algorithm is an algorithm to ensure mutual exclusion with two processes. It uses two flags (indicating that the other process wants to enter the critical section) and a variable turn to indicate which thread is allowed to enter the critical section:
>> ![[PProg-summary-rböhr.pdf#page=24&rect=101,422,552,622|PProg-summary-rböhr, p.24]]
>> 
>
>> [!idea]- Peterson Lock
>> Peterson Lock is another way to ensure 2 process mutual exclusion. We again have two flags and a turn or victim variable:
>> ![[PProg-summary-rböhr.pdf#page=24&rect=90,68,554,280|PProg-summary-rböhr, p.24]]
>> 
>
>> [!idea]- Filter Lock
>> The Filter Lock is an extension of Peterson’s Lock to n processes. The idea is that every thread knows his level in the filter `level[t]`. In order to enter the critical section, a thread has to elevate all levels. For each level, we use Petersons’s mechanism to filter at most one thread if other threads are at higher level. For every level, there is one `victim[l]` that has to let other pass in case of conflicts. It is not fair, it's first come first serve.
>> ![[PProg-summary-rböhr.pdf#page=25&rect=88,404,562,634|PProg-summary-rböhr, p.25]]
>> 
>
>> [!idea]- Baker's Lock
>> The bakery algorithm works like the numbering system in a postal office. Every thread has a label indicating when he is allowed to enter the critical section (when he has the lowest label). It is possible that multiple processes have the same label, in which case the thread id gets compared.
>> ![[PProg-summary-rböhr.pdf#page=26&rect=87,534,556,741|PProg-summary-rböhr, p.26]]
>> 
>
>> [!idea]- Spinlock
>> It's very easy to implement spinlock with TAS:
>> ![[PProg-summary-rböhr.pdf#page=26&rect=83,380,279,479|PProg-summary-rböhr, p.26]]
>> If we have a CAS(memref a, int old, int new) operation, it is also very easy to implement a spinlock:
>> ![[PProg-summary-rböhr.pdf#page=26&rect=81,242,362,341|PProg-summary-rböhr, p.26]]
>> Not fair.
>> 
>
>> [!idea]- TATAS Lock
>> The performance of the spinlock described above is quite poor for many threads, because all threads fight for the bus (memory bus) during the call of `getAndSet()` and the cache coherency protocol needs to invalidate cached copies of the lock on other processors. Therefore, we can improve performance by only calling `getAndSet()` / `compareAndSet()` when we noticed that the lock is available (i.e. testing first):
>> ![[PProg-summary-rböhr.pdf#page=27&rect=90,630,415,740|PProg-summary-rböhr, p.27]]
>> 
>>> [!idea]+ TATAS Lock with Backoff (BackOffLock)
>>> In a TATAS lock, there are still too many threads fighting for access to the same resource. Therefore we set a thread to sleep for a random duration when the acquisition of the lock fails. With an exponential backoff, we double the duration every time the acquisition fails.
>>> This leads to a heavy improvement in performance:
>>> ![[PProg-summary-rböhr.pdf#page=27&rect=80,327,558,529|PProg-summary-rböhr, p.27]]
>



> [!quote]+ Problems with Locking
> 
>> [!idea]+ Deadlock
>> Cycle exists in dependency graph, threads can't enter critical section because of mutual exclusion (blocking each other). Imagine, street crossing with cars at every road. No work is done. CPU usage will be low.
>> Deadlock free means, "more than one thread wants a lock => one is guaranteed to acquire it *within finite time*"
>>
>
>> [!idea]+ Livelock
>> No work is done, but with constant state changes. Imagine two people in narrow hallway and continuously moving out of each other's way into each other's way. CPU usage high (due to constant locking mechanism state change)
>> 
>
>> [!idea]+ Starvation
>> Situation where a thread never gets the chance to run, by pure bad luck or by some of its property (low priority).
>> Starvation free means, "more than one thread wants lock => all are guaranteed to acquire it *within finite time*"
>> 
>
>> [!idea]+ Unfairness
>> Fair locks are FIFO (first come, first serve). "We consider a thread P to be “first-in” compared to a competing thread Q, when P finishes its doorway section before Q starts its doorway section."
>> 
>
>



## Consistency Models

> [!quote]+ What is a History?
> ![[pprog-history-criteria.png]]

> [!quote]+ What is sequential consistency?
>- All instructions are executed in order
>- Every write operation becomes instantaneously visible throughout the system
>> [!idea]+ Inventor's two cents
>> "...the results of any execution is the same as if the operations of all the processors were executed in some sequential order, and the operations of each individual processor appear in this sequence in the order specified by its program."

> [!quote]+ What is quiescent consistency?
> - requires non-overlapping operations to appear to take effect in their realtime order, but overlapping operations might be reordered

> [!warning]+ Incomparable!!
> Sequential consistency and quiescent consistency are incomparable, there exist sequentially consistent executions that are not quiescently consistent, and vice versa.

> [!quote]+ What is linearizability?
>- Linearizability provides the illusion that each operation applied by concurrent processes takes effect instantaneously between its invocation and its response
>- "can we project onto a single history without reordering"
>- Linearizability implies sequential consistency
> 

## ExecutorService, ThreadPool, ForkJoin Framework




