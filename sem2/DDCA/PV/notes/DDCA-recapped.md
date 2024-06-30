
## Introduction

![[DDCA-topics.pdf#page=4&rect=71,338,454,391|DDCA-topics, p.4]]

>[!quote]- Abstraction and Complexity
>
![[DDCA-L02b-electrical-engineering.pdf#page=3&rect=57,33,621,389|DDCA-L02b-electrical-engineering, p.3]]
>
**The goal of circuit design is to optimize:**
![[DDCA-L02b-electrical-engineering.pdf#page=10&rect=34,57,580,428|DDCA-L02b-electrical-engineering, p.10]]

___

## Binary Numbers $\star$

![[DDCA-topics.pdf#page=5&rect=70,270,645,400|DDCA-topics, p.5]]
\+ IEE 32b / 64b FP 

>[!check] Yes
>If the hexadecimal number $(82)_{16}$ is expressing a number in sign-magnitude format, which number does it describe in decimal system?

___

## Electrical Engineering (Transistors and Gates)

![[DDCA-topics.pdf#page=6&rect=72,266,639,400|DDCA-topics, p.6]]

>[!check] Yes
>True or false, “pMOS transistors are used in CMOS gates to drive the output of a logic gate to logic low”

>[!fail] No
>- calculate electrical properties of a circuit with transistors 
>- draw/derive the transistor level schematic of a logic function
>- i.e. Draw the transistor level schematic of the CMOS logic gate realizing the function Y= A. (B+C)

___

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

>[!check] Yes
>- Which one of the following circuits is NOT a combinational circuit, why?

>[!fail] No
>- Graphical Bubble pushing exercises
>- Note that knowing how to push the bubbles could help you with simplification of Boolean logic equations (which we will ASK)


___

## Combinational Circuits (Design) $\star$

![[DDCA-topics.pdf#page=8&rect=71,380,353,401|DDCA-topics, p.8]]
![[DDCA-topics.pdf#page=8&rect=70,304,507,376|DDCA-topics, p.8]]

>[!check] Yes
>- Implement the Boolean logic equation Z=ABC+!A!B+!C!B using ONLY two input AND/OR gates and inverters
>- On the circuit you have drawn show the critical path, the shortest path by using the delay values for these gates
>- Simplify this logic function, how much are you able to reduce the critical path?

>[!fail] No
>- design circuits that make use of tri-state logic
>- fixing glitches
>	 i.e. Design a multiplexer using tri-state buffers

___
## Verilog for Combinational Circuits $\star$

![[DDCA-topics.pdf#page=9&rect=71,355,439,400|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=72,329,509,352|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=71,281,602,326|DDCA-topics, p.9]]

>[!check] Yes
>- Which one of the following Verilog statements have an ERROR? Explain the issue, and correct the line.

>[!fail] No
>- Implement tri-state busses, circuits using tri-state busses 
>- Derive truth tables or work with functions that have Z and X inputs
> - i.e. How do you write a Verilog code that implements a 32-bit tristate bus with 3 different drivers (Frank, Mohammad, Ataberk).

___

## Combinational Circuits in Processors

![[DDCA-topics.pdf#page=10&rect=71,269,478,403|DDCA-topics, p.10]]

>[!check] Yes
>- Calculate the propagation/contamination delay of a 16-bit Ripple Carry Adder. What is the maximum operating frequency of a processor that uses this adder in its critical path?

>[!fail] No
>- To derive how comparators are obtained from adders 
>- Design/draw large multipliers
>- i.e. Draw the transistor level schematic of the CMOS logic gate realizing the function Y= A. (B+C)

___

## Sequential Logic Design $\star$

![[DDCA-topics.pdf#page=12&rect=70,367,438,392|DDCA-topics, p.12]]
![[DDCA-topics.pdf#page=12&rect=70,274,572,363|DDCA-topics, p.12]]

>[!check] Yes
>- Design the FSM that implements “….” derive the logic equations for next state calculation, minimize them

>[!fail] No
>- To ‘factor’ FSMs in the exam (i.e. slides 60-63) 
>- Draw, transistor level schematics of latches and FFs
>- i.e. draw the transistor level schematic of a rising-edge trigerred D-type flip-flop with asynchronous reset and enable.

___

## Verilog for Sequential Circuits $\star$

![[DDCA-topics.pdf#page=13&rect=71,272,624,398|DDCA-topics, p.13]]

>[!check] Yes
>- Which of the following Verilog descriptions will result in a combinational circuit, and which ones will be a sequential circuit.

>[!fail] No
>- To evaluate differences/nuances between blocking and unblocking sequential statements (basics of what blocking and unblocking is could be asked)
>- Combinational Verilog descriptions where sensitivity list is manipulated to miss some signals.
>- i.e. Show that a combinational circuit described using unblocking statements wi ll work as well as one written with blocking statements

___

## Sequential Circuits: Timing $\star$

![[DDCA-topics.pdf#page=15&rect=69,314,605,394|DDCA-topics, p.15]]

>[!check] Yes
>- Given a circuit diagram (or Verilog code) calculate if the circuit has a setup or hold violation, if there is a violation explain how it can be fixed.

>[!fail] No
>- Calculations involving synchronizers (knowing what they do and their basics could be asked, but no detailed calculations on MTBF etc)
>- i.e. What is the mean time of failure for a circuit running at 1 GHz, when the input changes 100 times a second, Aperture time is 50ps, setup time is 300 ps, and the technology constant is 75 ps

___

## Need for Verification

![[DDCA-topics.pdf#page=16&rect=68,277,617,393|DDCA-topics, p.16]]

>[!check] Yes
>- If you can test 1’000’000’000 input combinations per second, how long would it take you to exhaustively test a 32bit adder.

>[!fail] No
>- List all possible testbench variations (slide 23)
>- i.e. Draw three different testbenches and explain what the differences are.

___

## Using Verilog for Testbenches

![[DDCA-topics.pdf#page=17&rect=71,277,486,399|DDCA-topics, p.17]]

>[!check] Yes
>- Take a look at the following Verilog testbench.
>- Explain what each section does.
>- Two of the sections have a mistake in the code, identify and correct them.

>[!fail] No
>- To write a golden model
>- Discuss the timing of stimuli application and sampling of expected outputs
>- i.e. Develop a golden model in a language of your preference to implement a golden model for multiplication.

___

## Number Systems

![[DDCA-topics.pdf#page=18&rect=72,275,586,398|DDCA-topics, p.18]]

>[!check] Yes
>- What is the difference between round-down and round-to-nearest?
>- Give an example where the rounding would result in different numbers.

>[!fail] No
>- To perform a IEEE 32/64 bit floating point number operation using a golden model in binary/hex 
>- To identify, describe the Floating Point Unit in page 30 
>- To memorize the special case encodings
>- i.e. Which number 32bit floating point number is represented by 32’h160a_59EF

___

## MIPS Assembly $\star$

![[DDCA-topics.pdf#page=19&rect=71,297,615,398|DDCA-topics, p.19]]

>[!check] Yes
>- Explain what the instruction lw `$t0, 24 ($s1)` will do.
>- Where is the data coming from and where will it be written to after this instruction.

>[!fail] No
>- To memorize the registers, all instructions of MIPS. If we ask questions that need such information, these will be provided
>- i.e. What is register number 17 in MIPS

___

## Memory

![[DDCA-topics.pdf#page=20&rect=70,318,646,398|DDCA-topics, p.20]]

>[!check] Yes
>- a

>[!fail] No
>- a

___

## MIPS Programming $\star$

![[DDCA-topics.pdf#page=21&rect=72,300,458,399|DDCA-topics, p.21]]
![[DDCA-topics.pdf#page=21&rect=71,276,629,298|DDCA-topics, p.21]]

>[!check] Yes
>- a

>[!fail] No
>- a

___

## Microarchitecture (Single Cycle) $\star$

![[DDCA-topics.pdf#page=22&rect=71,282,638,399|DDCA-topics, p.22]]

>[!check] Yes
>- a

>[!fail] No
>- a

___

## Pipelined MIPS Architecture $\star$

![[DDCA-topics.pdf#page=23&rect=71,328,530,398|DDCA-topics, p.23]]

>[!check] Yes
>- a

>[!fail] No
>- a

___
