
![[DDCA-u08a-manual.pdf#page=1&rect=86,130,525,263|DDCA-u08a-manual, p.1]]

![[DDCA-u08a-manual.pdf#page=3&rect=95,137,537,540|DDCA-u08a-manual, p.3]]

![[DDCA-u08a-manual.pdf#page=4&rect=87,167,529,359|DDCA-u08a-manual, p.4]]

![[DDCA-u08a-manual.pdf#page=4&rect=85,459,527,623|DDCA-u08a-manual, p.4]]
![[ddca-lab08a-mips-schematic.png]]


```verilog
assign IsIO = ALUResult[31:4] == 28'h00007ff;
assign IsMemWrite = MemWrite & ~IsIO;
assign IOWriteData = WriteData; 
assign IOAddr = ALUResult[3:0];
assign IOWriteEn = MemWrite & IsIO;
```


<div class="page-break" style="page-break-before: always;"></div>

# Report

## (1)
![[DDCA-u08a-report.pdf#page=1&rect=88,339,527,385|DDCA-u08a-report, p.1]]

All Mips instructions that store something back into the register won’t work anymore. 
In the controlUnit we can see all affected operations listed:
`OP_RTYPE`, `OP_LW` and `OP_ADDI`



___
## (2)
![[DDCA-u08a-report.pdf#page=2&rect=88,667,530,698|DDCA-u08a-report, p.2]]

 A 6-bit address can represent $2^6 = 64$ distinct values. In both the `DataMemory` and `InstructionMemory` modules, the memory arrays are declared as `reg [31:0] DataArr [63:0]` and `reg [31:0] InsArr [63:0]`. Thus 6 bits are enough to uniquely address each data and instruction in memory.



<div class="page-break" style="page-break-before: always;"></div>

## (3)
![[DDCA-u08a-report.pdf#page=2&rect=87,427,528,485|DDCA-u08a-report, p.2]]

>[!info] `snake_pattern.asm`
>This counter keeps track of the position in the loop of snake patterns. Making it go faster, loops through the pattern faster.

>[!info] `clock_div.v`
This counter is responsible for slowing down the frequency of the processor. It is incremented on every tick of the hardware clock and every x ticks, it sends a *divided* clock output.
>```
// Instantiate an internal clock divider that will
// take the 50 MHz FPGA clock and divide it by 5 so that
// We will have a simple 10 MHz clock internally
>```

>[!info] `DispCount`, `top.v`
>This counter determines, which seven segment display to turn on (send logical 0), i.e. it controls the update frequency of an AN segment.

