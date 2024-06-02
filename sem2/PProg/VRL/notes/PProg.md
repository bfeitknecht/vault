thread spawns with .start(), **NOT** .run(), .run() basically runs the Thread Object's run method sequentially.



do assignment 10 in exam prep (semaphore implementation)


locking is always pessimistic


course grained locking:
- easy
- less efficient

fine grained:
- harder to implement
- more efficient



pessimistic linked list:
- good for high contention, many threads on one list


optimistic linked list:
- dead- livelock and starvation less likely

