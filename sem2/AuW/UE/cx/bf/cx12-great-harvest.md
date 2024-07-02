

## Graph
```mermaid
flowchart TD

id0((0))
id1((1))
id2((2))
id3((3))

%%v["v[] = [ 1, 2, 3, 2 ]"]
%%p["p[] = [ 12, 6, 3, 5 ]"]
%%d["d[] = [ 4, 1, 8, 13 ]"]

id0 --> id1
id1 --> id2
id2 --> id1
id1 --> id3

```

## Network
```mermaid
flowchart LR

idF{"S"}
idT{"T"}

%% from
idf0((0))
idf1((1))
idf2((2))
idf3((3))

%% to
idt0((0))
idt1((1))
idt2((2))
idt3((3))
  

%% variety
id0a((a))
id1b((b))
id2c((c))
id3b((b))
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


idF ---|"?/12"| idf0
idF ---|"?/6"| idf1
idF ---|"?/3"| idf2
idF ---|"?/5"| idf3

idt0 ---|"?/4"| idT
idt1 ---|"?/1"| idT
idt2 ---|"?/8"| idT
idt3 ---|"?/13"| idT

idf0 --- id0a === idt0
id0a -.- idt1
idf1 --- id1b === idt1
id2c -.- idt1

id0a -.- idt2
id1b -.- idt2
idf2 --- id2c === idt2

id0a -.- idt3
idf3 --- id3b === idt3
id2c -.- idt3
```


## Alternate

```mermaid
flowchart LR

idS{"S"}
idT{"T"}

%% variety 1
id1a((0))
id2a((1))
id3a((2))
id4a((3))

%% variety 2
id1b((4))
id2b((5))
id3b((6))
id4b((7))

%% variety 3
id1c((8))
id2c((9))
id3c((10))
id4c((11))

%% cities
id1a((12))
id2a((13))
id3a((14))
id4a((15))
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


idS ---|"?/12"| id1a
idS ---|"?/6"| id2b
idS ---|"?/3"| id3c
idS ---|"?/5"| id4b

id1 ---|"?/4"| idT
id2 ---|"?/1"| idT
id3 ---|"?/8"| idT
id4 ---|"?/13"| idT


```

```
n	=	4
m	=	4
v	= 	[1, 2, 3, 2]	
p	=	[12, 6, 3, 5]
d	=	[4, 1, 8, 13]

0 --> 1
1 --> 2
2 --> 1
1 --> 3
```

