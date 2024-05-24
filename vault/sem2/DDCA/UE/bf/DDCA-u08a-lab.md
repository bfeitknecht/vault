
![[DDCA-u08a-manual.pdf#page=1&rect=86,130,525,263|DDCA-u08a-manual, p.1]]

![[DDCA-u08a-manual.pdf#page=3&rect=95,137,537,540|DDCA-u08a-manual, p.3]]

![[DDCA-u08a-manual.pdf#page=4&rect=87,167,529,359|DDCA-u08a-manual, p.4]]

![[DDCA-u08a-manual.pdf#page=4&rect=85,459,527,623|DDCA-u08a-manual, p.4]]
![[ddca-lab08-mips-schematic.png]]


```verilog
assign IsMemWrite = MemWrite & ~IsIO;
assign IOWriteData = WriteData; 
assign IOAddr = ALUResult[3:0];
assign IOWriteEn = MemWrite & IsIO;
```



# Report
## (1)
![[DDCA-u08a-report.pdf#page=1&rect=88,339,527,385|DDCA-u08a-report, p.1]]


___



## (2)
![[DDCA-u08a-report.pdf#page=2&rect=88,667,530,698|DDCA-u08a-report, p.2]]


___



## (3)
![[DDCA-u08a-report.pdf#page=2&rect=87,427,528,485|DDCA-u08a-report, p.2]]


___
