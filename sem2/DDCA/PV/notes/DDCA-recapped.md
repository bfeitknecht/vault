
```
TODO:
add examplory questions in each section
```


## Introduction

![[DDCA-topics.pdf#page=4&rect=71,338,454,391|DDCA-topics, p.4]]

>[!quote]- Abstraction and Complexity
>
![[DDCA-L02b-electrical-engineering.pdf#page=3&rect=57,33,621,389|DDCA-L02b-electrical-engineering, p.3]]
>
**The goal of circuit design is to optimize:**
![[DDCA-L02b-electrical-engineering.pdf#page=10&rect=34,57,580,428|DDCA-L02b-electrical-engineering, p.10]]

___

## Number Systems $\star$

![[DDCA-topics.pdf#page=5&rect=70,270,645,400|DDCA-topics, p.5]]
\+ IEE 32b / 64b FP 

1 2 4 etc

___

## Electrical Engineering (Transistors and Gates)

![[DDCA-topics.pdf#page=6&rect=72,266,639,400|DDCA-topics, p.6]]

### Semiconductors
>[!quote] What is so great about semiconductors?
>- Silicone based
>- You can “engineer” its properties 
>- Make it P type by injecting type-III elements (B, Ga, In) 
>- Make it N type by injecting elements from type-V (P, As) 
>- Starting with a pure semiconductor, you can combine P and N regions
>- Allows you to make interesting electrical devices (Diodes, Transistors, Thrystors)
>  
![[DDCA-L02b-electrical-engineering.pdf#page=17&rect=29,37,652,491|DDCA-L02b-electrical-engineering, p.17]]
![[DDCA-L02b-electrical-engineering.pdf#page=18&rect=33,35,643,491|DDCA-L02b-electrical-engineering, p.18]]

### Transistors
>[!quote] **What is so great about CMOS?**
>- No input current 
>- Capacitive input, no resistive path from the input. 
>- No current when output is at logic levels 
>- Little static power, current is needed only when switching 
>- Electrical properties determined directly by geometry: 
>	a transistor that is 2 times larger drives twice the current 
>- Very simple to manufacture:
>	pMOS and nMOS can be manufactured on the same substrate

>[!idea]- pMOS + nMOS = CMOS
>- "When one MOS works, the other is the load"
>- can pull current u**p** (**p**MOS) or dow**n** (**n**MOS)
>  
![[DDCA-L02b-electrical-engineering.pdf#page=26&rect=26,98,660,377|DDCA-L02b-electrical-engineering, p.26]]
![[DDCA-L02b-electrical-engineering.pdf#page=27&rect=26,94,664,378|DDCA-L02b-electrical-engineering, p.27]]

### Logic Gates
>[!quote] What is so great about logic gates?
>- helps us abstract:
>	translate between formula and circuit 
>- easier to draw than complex transistor layouts
>- "pushing bubbles" can simplify

>[!quote]- NOT Gate
>- Inverts the input
>![[DDCA-L02b-electrical-engineering.pdf#page=30&rect=56,309,181,403|DDCA-L02b-electrical-engineering, p.30]]
>
>![[DDCA-L02b-electrical-engineering.pdf#page=30&rect=71,218,173,302|DDCA-L02b-electrical-engineering, p.30]]

>[!quote]- NAND Gate
>- functionally complete (can implement all other truth tables)
>![[DDCA-L02b-electrical-engineering.pdf#page=32&rect=27,309,169,403|DDCA-L02b-electrical-engineering, p.32]]
>![[DDCA-L02b-electrical-engineering.pdf#page=32&rect=39,178,174,302|DDCA-L02b-electrical-engineering, p.32]]

>[!quote]- General Gates
>
![[DDCA-L02b-electrical-engineering.pdf#page=40&rect=28,29,699,439|DDCA-L02b-electrical-engineering, p.40]]
>
To construct any inverting logic gates, i.e. NOT, NAND, NOR:
![[DDCA-L02b-electrical-engineering.pdf#page=34&rect=30,79,700,431|DDCA-L02b-electrical-engineering, p.34]]

___

## Combinational Circuits (Theory)

![[DDCA-topics.pdf#page=7&rect=71,275,601,393|DDCA-topics, p.7]]

___

## Combinational Circuits (Design) $\star$

![[DDCA-topics.pdf#page=8&rect=70,304,507,376|DDCA-topics, p.8]]
\+ SOP and POS fomulations, definitions

___
## Verilog for Combinational Circuits $\star$

![[DDCA-topics.pdf#page=9&rect=71,355,439,400|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=72,329,509,352|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=71,281,602,326|DDCA-topics, p.9]]

___

## Combinational Circuits on Processors

![[DDCA-topics.pdf#page=10&rect=71,269,478,403|DDCA-topics, p.10]]

___

## Sequential Logic Design $\star$

![[DDCA-topics.pdf#page=12&rect=70,367,438,392|DDCA-topics, p.12]]
![[DDCA-topics.pdf#page=12&rect=70,274,572,363|DDCA-topics, p.12]]

___

## Verilog for Sequential Circuits $\star$

![[DDCA-topics.pdf#page=13&rect=71,272,624,398|DDCA-topics, p.13]]

___

## Sequential Circuits: Timing $\star$

![[DDCA-topics.pdf#page=15&rect=69,314,605,394|DDCA-topics, p.15]]

___

## Need for Verification

![[DDCA-topics.pdf#page=16&rect=68,277,617,393|DDCA-topics, p.16]]

___

## Using Verilog for Testbenches

![[DDCA-topics.pdf#page=17&rect=71,277,486,399|DDCA-topics, p.17]]
