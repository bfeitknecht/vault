___

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

>[!check]+ Yes
>If the hexadecimal number $(82)_{16}$ is expressing a number in sign-magnitude format, which number does it describe in decimal system?


### Powers of Two
![[DDCA-L02a-binary-numbers.pdf#page=6&rect=95,86,626,436|DDCA-L02a-binary-numbers, p.6]]



___

## Electrical Engineering (Transistors and Gates)

![[DDCA-topics.pdf#page=6&rect=72,266,639,400|DDCA-topics, p.6]]

>[!check]+ Yes
>True or false, “pMOS transistors are used in CMOS gates to drive the output of a logic gate to logic low”

>[!fail]+ No
>- calculate electrical properties of a circuit with transistors 
>- draw/derive the transistor level schematic of a logic function
>- i.e. Draw the transistor level schematic of the CMOS logic gate realizing the function Y= A. (B+C)

___

### Semiconductors
>[!quote]+ What is so great about semiconductors?
>- Silicone based
>- You can “engineer” its properties 
>- Make it P type by injecting type-III elements (B, Ga, In) 
>- Make it N type by injecting elements from type-V (P, As) 
>- Starting with a pure semiconductor, you can combine P and N regions
>- Allows you to make interesting electrical devices (Diodes, Transistors, Thrystors)

>[!idea]- P type vs N type
> - N type has negative overcharge
>![[DDCA-L02b-electrical-engineering.pdf#page=17&rect=29,37,652,491|DDCA-L02b-electrical-engineering, p.17]]
>
>- P Type has positive overcharge
>![[DDCA-L02b-electrical-engineering.pdf#page=18&rect=33,35,643,491|DDCA-L02b-electrical-engineering, p.18]]


### Transistors
>[!quote]+ **What is so great about CMOS?**
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
>[!quote]+ What is so great about logic gates?
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

>[!check]+ Yes
>- Which one of the following circuits is NOT a combinational circuit, why?

>[!fail]+ No
>- Graphical Bubble pushing exercises
>- Note that knowing how to push the bubbles could help you with simplification of Boolean logic equations (which we will ASK)

>[!quote]+ Different types of logic circuits
>
>>[!quote]+ What is a combinational circuit?
>>- Memoryless
>>- Outputs determined by current values of inputs
>>- Every circuit element is itself combinational
>>- Every node of the circuit is either 
>> 	designated as an input to the circuit or 
>> 	 connects to exactly one output terminal of a circuit element
>> 
>
>>[!quote]+ What is a sequential circuit?
>>- Has memory 
>>- Outputs determined by previous and current values of inputs
>> 
>
>

>[!quote]+ Boolean Algebra
>
>>[!idea]- Axioms
>> ![[DDCA-L03-combinational-circuits-theory.pdf#page=23&rect=35,207,685,426|DDCA-L03-combinational-circuits-theory, p.23]]
>> ![[DDCA-L03-combinational-circuits-theory.pdf#page=24&rect=34,177,682,419|DDCA-L03-combinational-circuits-theory, p.24]]
>
>>[!idea]- Karnaugh Maps
>> - Special order for bit combination (gray codes;  00, 01, 11, 10) 
>> - Every 1 in a K-map must be circled at least once 
>> - Squares have dimension $2^n \times 2^m$ 
>> - Squares must be as large as possible and may wrap the map
>> - “Don't care” (X) is circled only if it helps minimize the equation
>> ![[DDCA-L04a-combinational-circuits-theory.pdf#page=16&rect=50,76,678,417|DDCA-L04a-combinational-circuits-theory, p.16]]
>
>
>


___

## Combinational Circuits (Design) $\star$

![[DDCA-topics.pdf#page=8&rect=71,380,353,401|DDCA-topics, p.8]]
![[DDCA-topics.pdf#page=8&rect=70,304,507,376|DDCA-topics, p.8]]

>[!check]+ Yes
>- Implement the Boolean logic equation Z=ABC+!A!B+!C!B using ONLY two input AND/OR gates and inverters
>- On the circuit you have drawn show the critical path, the shortest path by using the delay values for these gates
>- Simplify this logic function, how much are you able to reduce the critical path?

>[!fail]+ No
>- design circuits that make use of tri-state logic
>- fixing glitches
>	 i.e. Design a multiplexer using tri-state buffers

>[!quote]+ More Boolean Algebra
>
> critical path = longest path
> 
>>[!idea]+ SOP vs POS
>>
>>![[DDCA-L04a-combinational-circuits-theory.pdf#page=10&rect=57,12,704,433|DDCA-L04a-combinational-circuits-theory, p.10]]
>>
>>>[!idea]- SOP
>>> - All Boolean equations can be written in SOP form 
>>>	Each row in a truth table has a minterm
>>>	A minterm is a product (AND) of literals 
>>>	Each minterm is TRUE for that row (and only that row) 
>>>  - Formed by ORing $\bigvee^*$ the minterms for which the output is TRUE
>>>![[DDCA-L04a-combinational-circuits-theory.pdf#page=7&rect=170,286,697,456|DDCA-L04a-combinational-circuits-theory, p.7]]
>>
>>>[!idea]- POS
>>> - All Boolean equations can be written in POS form
>>>	Each row in a truth table has a maxterm 
>>>	A maxterm is a sum (OR) of literals 
>>>	Each maxterm is FALSE for that row (and only that row) 
>>> - Formed by ANDing $\bigwedge^*$ the maxterms for which the output is FALSE
>>>![[DDCA-L04a-combinational-circuits-theory.pdf#page=8&rect=160,28,536,241|DDCA-L04a-combinational-circuits-theory, p.8]]
>>
>>


___
## Verilog for Combinational Circuits $\star$

![[DDCA-topics.pdf#page=9&rect=71,355,439,400|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=72,329,509,352|DDCA-topics, p.9]]
![[DDCA-topics.pdf#page=9&rect=71,281,602,326|DDCA-topics, p.9]]

>[!check]+ Yes
>- Which one of the following Verilog statements have an ERROR? Explain the issue, and correct the line.

>[!fail]+ No
>- Implement tri-state busses, circuits using tri-state busses 
>- Derive truth tables or work with functions that have Z and X inputs
> - i.e. How do you write a Verilog code that implements a 32-bit tristate bus with 3 different drivers (Frank, Mohammad, Ataberk).

>[!quote]+ Verilog Basics
> 
> ![[DDCA-L04b-verilog-combinational.pdf#page=13&rect=31,77,623,433|DDCA-L04b-verilog-combinational, p.13]]
> ![[DDCA-L04b-verilog-combinational.pdf#page=33&rect=30,24,675,501|DDCA-L04b-verilog-combinational, p.33]]
> 
>>[!Iidea]- Defining a Module
>> ![[DDCA-L04b-verilog-combinational.pdf#page=8&rect=41,250,375,432|DDCA-L04b-verilog-combinational, p.8]]
>> ![[DDCA-L04b-verilog-combinational.pdf#page=8&rect=176,79,547,222|DDCA-L04b-verilog-combinational, p.8]]
>
>>[!idea]- Busses
>> ```
>> wire [31:0] a;	// a[31], a[30] .. a[0]
>> wire [8:0] b; 	// b[0], b[1] .. b[7]
>> ```
>> little vs big endian
>> ![[endians.jpg]]
>
>>[!idea]- Operators
>>bitwise logical operators:
>> ![[DDCA-L04b-verilog-combinational.pdf#page=25&rect=69,159,407,287|DDCA-L04b-verilog-combinational, p.25]]
>> 
>> logical reduction operators:
>> ```verilog
>> wire a[3:0];
>> assign y1 = &a;	// logical or reduction
>> assign y2 = |a;	// logical and reduction
>> ```
> 
> 


___

## Combinational Circuits in Processors

![[DDCA-topics.pdf#page=10&rect=71,269,478,403|DDCA-topics, p.10]]

>[!check]+ Yes
>- Calculate the propagation/contamination delay of a 16-bit Ripple Carry Adder. What is the maximum operating frequency of a processor that uses this adder in its critical path?

>[!fail]+ No
>- To derive how comparators are obtained from adders 
>- Design/draw large multipliers
>- i.e. Draw the transistor level schematic of the CMOS logic gate realizing the function Y= A. (B+C)

___

## Sequential Logic Design $\star$

![[DDCA-topics.pdf#page=12&rect=70,367,438,392|DDCA-topics, p.12]]
![[DDCA-topics.pdf#page=12&rect=70,274,572,363|DDCA-topics, p.12]]

>[!check]+ Yes
>- Design the FSM that implements “….” derive the logic equations for next state calculation, minimize them

>[!fail]+ No
>- To ‘factor’ FSMs in the exam (i.e. slides 60-63) 
>- Draw, transistor level schematics of latches and FFs
>- i.e. draw the transistor level schematic of a rising-edge trigerred D-type flip-flop with asynchronous reset and enable.

___

## Verilog for Sequential Circuits $\star$

![[DDCA-topics.pdf#page=13&rect=71,272,624,398|DDCA-topics, p.13]]

>[!check]+ Yes
>- Which of the following Verilog descriptions will result in a combinational circuit, and which ones will be a sequential circuit.

>[!fail]+ No
>- To evaluate differences/nuances between blocking and unblocking sequential statements (basics of what blocking and unblocking is could be asked)
>- Combinational Verilog descriptions where sensitivity list is manipulated to miss some signals.
>- i.e. Show that a combinational circuit described using unblocking statements wi ll work as well as one written with blocking statements

___

## Sequential Circuits: Timing $\star$

![[DDCA-topics.pdf#page=15&rect=69,314,605,394|DDCA-topics, p.15]]

>[!check]+ Yes
>- Given a circuit diagram (or Verilog code) calculate if the circuit has a setup or hold violation, if there is a violation explain how it can be fixed.

>[!fail]+ No
>- Calculations involving synchronizers (knowing what they do and their basics could be asked, but no detailed calculations on MTBF etc)
>- i.e. What is the mean time of failure for a circuit running at 1 GHz, when the input changes 100 times a second, Aperture time is 50ps, setup time is 300 ps, and the technology constant is 75 ps

___

## Need for Verification

![[DDCA-topics.pdf#page=16&rect=68,277,617,393|DDCA-topics, p.16]]

>[!check]+ Yes
>- If you can test 1’000’000’000 input combinations per second, how long would it take you to exhaustively test a 32bit adder.

>[!fail]+ No
>- List all possible testbench variations (slide 23)
>- i.e. Draw three different testbenches and explain what the differences are.

___

## Using Verilog for Testbenches

![[DDCA-topics.pdf#page=17&rect=71,277,486,399|DDCA-topics, p.17]]

>[!check]+ Yes
>- Take a look at the following Verilog testbench.
>- Explain what each section does.
>- Two of the sections have a mistake in the code, identify and correct them.

>[!fail]+ No
>- To write a golden model
>- Discuss the timing of stimuli application and sampling of expected outputs
>- i.e. Develop a golden model in a language of your preference to implement a golden model for multiplication.

___

## Number Systems

![[DDCA-topics.pdf#page=18&rect=72,275,586,398|DDCA-topics, p.18]]

>[!check]+ Yes
>- What is the difference between round-down and round-to-nearest?
>- Give an example where the rounding would result in different numbers.

>[!fail]+ No
>- To perform a IEEE 32/64 bit floating point number operation using a golden model in binary/hex 
>- To identify, describe the Floating Point Unit in page 30 
>- To memorize the special case encodings
>- i.e. Which number 32bit floating point number is represented by 32’h160a_59EF

___

## MIPS Assembly $\star$

![[DDCA-topics.pdf#page=19&rect=71,297,615,398|DDCA-topics, p.19]]

>[!check]+ Yes
>- Explain what the instruction lw `$t0, 24 ($s1)` will do.
>- Where is the data coming from and where will it be written to after this instruction.

>[!fail]+ No
>- To memorize the registers, all instructions of MIPS. If we ask questions that need such information, these will be provided
>- i.e. What is register number 17 in MIPS

___

## Memory

![[DDCA-topics.pdf#page=20&rect=70,318,646,398|DDCA-topics, p.20]]

>[!check]+ Yes
>- You have an SRAM block that has 8 address bits and can store 32 bits at a time. How many bytes can be stored in this memory.
>- For your 32 bit MIPS processor you need a 4 kByte memory, show a block diagram how this can be constructed using this memory block, connect the address bits and add necessary components.

>[!fail]+ No
>- Internal structure of the RAMs using transistor/capacitor and questions related to how electrically the RAM works.
>- i.e. Explain how the transistors connected to the wordline work

___

## MIPS Programming $\star$

![[DDCA-topics.pdf#page=21&rect=72,300,458,399|DDCA-topics, p.21]]
![[DDCA-topics.pdf#page=21&rect=71,276,629,298|DDCA-topics, p.21]]

>[!check]+ Yes
>- ??

>[!fail]+ No
>- Exceptions and exception handling 
>- Floating point instructions
>- i.e. Explain what happens during an exception call. What is EPC and how is it updated.

___

## Microarchitecture (Single Cycle) $\star$

![[DDCA-topics.pdf#page=22&rect=71,282,638,399|DDCA-topics, p.22]]

>[!check]+ Yes
>- ??

>[!fail]+ No
>- To know all instructions by heart, if questions involve details of an instruction, the table from Appendix B of your book will be provided 
>- To draw an entire processor from scratch. If there are such questions, it will be to complete pieces of a missing diagram or find/fix errors.
>- i.e. What is the opcode for lw

___

## Pipelined MIPS Architecture $\star$

![[DDCA-topics.pdf#page=23&rect=71,328,530,398|DDCA-topics, p.23]]

>[!check]+ Yes
>- We have a single cycle processor that works at 1GHz. The idea is to have a 10-stage pipeline pipelining to improve performance. What is the theoretical max frequency? 
>- We use pipeline registers with a 20ps setup time, 0ps hold time and a 30 ps propagation/contamination delay. If everything else needed for pipelining can be done without ill effects, what is the max frequency we can achieve. 
>- What other effects do you expect would reduce this theoretical performance? Name three different aspects, describe one of them.

>[!fail]+ No
>- To modify the block diagram to implement various hazard mitigation mechanisms like forwarding and branch prediction (you should still know what these mechanisms are, but not memorize the specific implementation details)
>- i.e. Explain how the execute stage can be stalled and modify the block diagram of the processor to add the STALLD, STALLF and FLUSHE signals

___
