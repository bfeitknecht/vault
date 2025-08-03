---
module: "[[CN]]"
prev: "[[CN-v-w01]]"
next: "[[CN-v-w03]]"
tags: 
slides:
  - "[[CN-s03-DNS.pdf]]"
  - "[[CN-s04-WWW.pdf]]"
---

# Info


# Topics
- [[application layer]]
- [[domain name system]]
- DNS resolution strategy
- uniform resource locator (URL)


# Notes
## URL
![[CN-s04-WWW.pdf#page=14&rect=56,172,805,253|CN-s04-WWW, p.14]]
- specifies a resource in a network and how to access it


## DNS
- DNS contains fully qualified network name `subdomain.domain.tld.`
- hierarchical architecture ensures no collisions, every level has one responsible organization
- uses UDP, reliability through repeating requests
- overall highly ...
    - scalable, in terms of records, analytics, administration
    - available, domains replicate independently
    - extensible, any level (including TLD) can be modified independently
- caching is very effective, top level servers rarely change and are very frequently requested
    - TTL field in record specifies how long until discard

### Resolution
- recursive resolution strategy
    - client offloads resolution of query to rest of tree
    ![[CN-top-down-kurose-ross.pdf#page=168&rect=53,412,403,900|CN-top-down-kurose-ross, p.168|300]]
- iterative resolution strategy
    - resolve server only returns address of next server to query
    ![[CN-top-down-kurose-ross.pdf#page=166&rect=52,101,386,553|CN-top-down-kurose-ross, p.166|300]]
    
- ==type of resolution strategy can change along the path!==
