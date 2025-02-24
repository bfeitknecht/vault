
# Info

# Topics
- DNS

# Notes
- URL contains fully qualified network name `subdomain.domain.tld`
- hierarchical architecture ensures no collisions, every level has one responsible organization


```dig
$ dig ch. @a.root-servers.net.

; <<>> DiG 9.10.6 <<>> ch. @a.root-servers.net.
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 53540
;; flags: qr rd; QUERY: 1, ANSWER: 0, AUTHORITY: 5, ADDITIONAL: 11
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;ch.				IN	A

;; AUTHORITY SECTION:
ch.			172800	IN	NS	b.nic.ch.
ch.			172800	IN	NS	e.nic.ch.
ch.			172800	IN	NS	a.nic.ch.
ch.			172800	IN	NS	d.nic.ch.
ch.			172800	IN	NS	f.nic.ch.

;; ADDITIONAL SECTION:
b.nic.ch.		172800	IN	A	130.59.31.43
b.nic.ch.		172800	IN	AAAA	2001:620:0:ff::58
e.nic.ch.		172800	IN	A	194.0.17.1
e.nic.ch.		172800	IN	AAAA	2001:678:3::1
a.nic.ch.		172800	IN	A	130.59.31.41
a.nic.ch.		172800	IN	AAAA	2001:620:0:ff::56
d.nic.ch.		172800	IN	A	194.0.25.39
d.nic.ch.		172800	IN	AAAA	2001:678:20::39
f.nic.ch.		172800	IN	A	194.146.106.10
f.nic.ch.		172800	IN	AAAA	2001:67c:1010:2::53

;; Query time: 27 msec
;; SERVER: 2001:503:ba3e::2:30#53(2001:503:ba3e::2:30)
;; WHEN: Mon Feb 24 14:54:36 CET 2025
;; MSG SIZE  rcvd: 335
```
