
## How to create and run a Thread

In Java, there’s the `java.lang.Thread` class for managing Threads. The most important methods are:
![[PProg-summary-rböhr.pdf#page=5&rect=99,151,556,237|PProg-abstract, p.5]]

### 1. Anonymous Inline
![[PProg-u02-e.pdf#page=2&rect=86,125,289,216|PProg-u02-e, p.2]]
Mainly applicable for small tasks.

___
### 2. Implementing Runnable Interface
![[PProg-u02-e.pdf#page=3&rect=86,537,341,683|PProg-u02-e, p.3]]
![[PProg-u02-e.pdf#page=3&rect=88,463,320,511|PProg-u02-e, p.3]]
Most flexibility, greater control. This can come in handy if you have a computation that relies on a lot of shared state, but is at the same time fairly complicated. In that scenario, you want the class that implements your task to implement Runnable. Using this method, you can share a single task object between multiple threads.

___
### 3. Inherit from Thread Class
![[PProg-u02-e.pdf#page=3&rect=87,281,333,435|PProg-u02-e, p.3]]
![[PProg-u02-e.pdf#page=3&rect=86,194,282,254|PProg-u02-e, p.3]]
Must override `run()` method!


>[!warning]
>Always use `.start()` to start a Thread!
![[PProg-summary-rböhr.pdf#page=6&rect=82,497,543,545|PProg-abstract, p.6]]



## Concurrency vs Parallelism 

![[PProg-w02-benji.pdf#page=13&rect=34,214,845,501|PProg-w02-benji, p.13]]
→ concurrency is possible with a single thread, parallelism not! 

*Daemon* threads are out of the user scope (garbage collection, etc.). When all non-daemon threads terminate, the JVM terminates the program.



## Thread-State-Model

![[PProg-w03-benji.pdf#page=61&rect=149,54,834,413|PProg-w03-benji, p.61]]



## Atomic Operations and Types

![[PProg-w04-benji.pdf#page=52&rect=167,19,942,147|PProg-w04-benji, p.52]]

>[!idea] What is an atomic operation?
>An operation is atomic if no other thread can see it partly executed. Atomic, as in “appears indivisible”. However, does not mean it’s implemented as single instruction.



## Pipeline
![[PProg-w04-benji.pdf#page=58&rect=120,102,846,413|PProg-w04-benji, p.58]]
![[PProg-w05-benji.pdf#page=13&rect=91,36,610,331|PProg-w05-benji, p.13]]



##